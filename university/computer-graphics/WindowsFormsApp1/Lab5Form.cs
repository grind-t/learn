using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using Tao.OpenGl;
using Tao.FreeGlut;
using Tao.Platform.Windows;
using System.Diagnostics;

namespace WindowsFormsApp1
{
    public partial class Lab5Form : Form
    {
        const float gravity = 9.81f;
        float angle = 0f;
        float angularVelocity = 0f;
        int t = 0;
        float bobRadius = 20f;
        List<PointF> velocityGraphPoints = new List<PointF>();

        public Lab5Form()
        {
            InitializeComponent();
            AnT.InitializeContexts();
            velocityGraph.InitializeContexts();
            energyGraph.InitializeContexts();
            startAngleUpDown.ValueChanged += (object s, EventArgs e) => StartPendulum();
        }

        private void Lab5Form_Load(object sender, EventArgs e)
        {
            Glut.glutInit();
            InitializePendulumScene();
            InitializeVelocityGraphScene();
            InitializeEnergyGraphScene();
            StartPendulum();
        }

        private void renderTimer_Tick(object sender, EventArgs e)
        {
            // Очистка буфера цвета и буфера глубины.
            Gl.glClear(Gl.GL_COLOR_BUFFER_BIT | Gl.GL_DEPTH_BUFFER_BIT);
            // Очистка матрицы.
            Gl.glLoadIdentity();
            // Отступ от сцены.         
            Gl.glTranslatef(0, 0, -100);

            PointF pivot = new PointF((float)pivotXUpDown.Value, (float)pivotYUpDown.Value);
            float rotateX = (float)rotateXUpDown.Value;
            float rotateY = (float)rotateYUpDown.Value;
            float rotateZ = (float)rotateZUpDown.Value;
            float armLength = (float)armLenUpDown.Value;
            float bobMass = (float)bobMassUpDown.Value;
            float damping = (float)dampingUpDown.Value / 100f;
            float period = (float)(2 * Math.PI * Math.Sqrt(armLength / gravity));
            float angularAcceleration = -gravity / armLength * (float)Math.Sin(angle);
            float gravityForce = bobMass * gravity;
            float tangentForce = gravityForce * (float)Math.Sin(angle);
            float perpendForce = gravityForce * (float)Math.Cos(angle);
            float tensionForce = -(bobMass * (float)Math.Pow(angularVelocity, 2) * armLength + perpendForce);
            velocityGraphPoints.Add(new PointF(t, angularVelocity));
            float kineticEnergy = bobMass * (float)Math.Pow(angularVelocity, 2) / 2;
            float potentialEnergy = bobMass * gravity * armLength * (1f - (float)Math.Cos(angle)) / 10000f;

            AnT.MakeCurrent();
            DrawPendulum(pivot, armLength, rotateX, rotateY, rotateZ);
            DrawForces(pivot, armLength, gravityForce, tensionForce, rotateX, rotateY, rotateZ);
            Gl.glFlush();
            AnT.Invalidate();

            velocityGraph.MakeCurrent();
            DrawVelocityGraph();
            Gl.glFlush();
            velocityGraph.Invalidate();

            energyGraph.MakeCurrent();
            DrawEnergyGraph(kineticEnergy, potentialEnergy);
            Gl.glFlush();
            energyGraph.Invalidate();

            PrintInfo(t, period, angle, angularVelocity, angularAcceleration, gravityForce, tangentForce, perpendForce, tensionForce, kineticEnergy, potentialEnergy);

            angularVelocity += angularAcceleration;
            angularVelocity *= damping;
            angle += angularVelocity;
            t += renderTimer.Interval;
        }

        void InitializePendulumScene()
        {
            AnT.MakeCurrent();
            Glut.glutInitDisplayMode(Glut.GLUT_RGB | Glut.GLUT_DOUBLE | Glut.GLUT_DEPTH);
            Gl.glClearColor(255, 255, 255, 1);
            Gl.glViewport(0, 0, AnT.Width, AnT.Height);
            Gl.glMatrixMode(Gl.GL_PROJECTION);
            Gl.glLoadIdentity();
            Gl.glOrtho(0, AnT.Width, AnT.Height, 0, 0, 1000f);
            Gl.glMatrixMode(Gl.GL_MODELVIEW);
            Gl.glLoadIdentity();
            Gl.glEnable(Gl.GL_DEPTH_TEST);
            Gl.glEnable(Gl.GL_LIGHTING);
            Gl.glEnable(Gl.GL_LIGHT0);
        }

        void InitializeVelocityGraphScene()
        {
            velocityGraph.MakeCurrent();
            Glut.glutInitDisplayMode(Glut.GLUT_RGB | Glut.GLUT_DOUBLE);
            Gl.glClearColor(255, 255, 255, 1);
            Gl.glViewport(0, 0, velocityGraph.Width, velocityGraph.Height);
            Gl.glMatrixMode(Gl.GL_PROJECTION);
            Gl.glLoadIdentity();
            Glu.gluOrtho2D(0, 1000, 0, 1000);
            Gl.glMatrixMode(Gl.GL_MODELVIEW);
        }

        void InitializeEnergyGraphScene()
        {
            energyGraph.MakeCurrent();
            Glut.glutInitDisplayMode(Glut.GLUT_RGB | Glut.GLUT_DOUBLE);
            Gl.glClearColor(255, 255, 255, 1);
            Gl.glViewport(0, 0, energyGraph.Width, energyGraph.Height);
            Gl.glMatrixMode(Gl.GL_PROJECTION);
            Gl.glLoadIdentity();
            Glu.gluOrtho2D(0, 1000, 0, 1000);
            Gl.glMatrixMode(Gl.GL_MODELVIEW);
        }

        void StartPendulum()
        {
            angle = Radians((float)startAngleUpDown.Value);
            angularVelocity = 0f;
            t = 0;
            velocityGraphPoints.Clear();
            renderTimer.Start();
        }

        void DrawPendulum(PointF pivot, float armLength, float rotateX, float rotateY, float rotateZ)
        {
            // Arm.
            Gl.glPushMatrix();
            Gl.glTranslatef(pivot.X, pivot.Y, 0);
            Gl.glRotatef(-Degrees(angle), rotateX, rotateY, rotateZ);
            Gl.glRotatef(-90, 1, 0, 0);
            Glut.glutSolidCylinder(5f, armLength, 32, 32);
            Gl.glPopMatrix();
            // Bob.
            Gl.glPushMatrix();
            Gl.glTranslatef(pivot.X, pivot.Y, 0);
            Gl.glRotatef(-Degrees(angle), rotateX, rotateY, rotateZ);
            Gl.glTranslatef(0, armLength, 0);
            Glut.glutSolidSphere(bobRadius, 32, 32);
            Gl.glPopMatrix();
        }

        void DrawForces(PointF pivot, float armLen, float Fg, float tension, float rotateX, float rotateY, float rotateZ)
        {
            // Gravity.
            Gl.glPushMatrix();
            Gl.glTranslatef(pivot.X, pivot.Y, 0);
            Gl.glRotatef(-Degrees(angle), rotateX, rotateY, rotateZ);
            Gl.glTranslatef(0, armLen, 0);
            Gl.glRotated(-90, 1, 0, 0);
            Glut.glutSolidCylinder(5f, Fg + bobRadius, 32, 32);
            Gl.glTranslatef(0, 0, Fg + bobRadius);
            Glut.glutSolidCone(10f, 10f, 32, 32);
            Gl.glRasterPos3f(15, 0, 0);
            Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_9_BY_15, 'm');
            Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_9_BY_15, 'g');
            Gl.glPopMatrix();
            // Tension.
            Gl.glPushMatrix();
            Gl.glTranslatef(pivot.X, pivot.Y, 0);
            Gl.glRotatef(-Degrees(angle), rotateX, rotateY, rotateZ);
            Gl.glTranslatef(0, armLen, 0);
            Gl.glRotatef(90, 1, 0, 0);
            Glut.glutSolidCylinder(5f, Math.Abs(tension) + bobRadius, 32, 32);
            Gl.glTranslatef(0, 5f, Math.Abs(tension) + bobRadius);
            Glut.glutSolidCone(10f, 10f, 32, 32);
            Gl.glRasterPos3f(15, 0, 0);
            Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_9_BY_15, 'T');
            Gl.glPopMatrix();
        }

        void DrawVelocityGraph()
        {
            PointF origin = new PointF(50, 50);
            PointF center = new PointF(50, 500);
            float width = 950;
            float height = 950;
            float velocityScale = (float)velocityScaleUpDown.Value;
            float timeScale = (float)timeScaleUpDown.Value;
            // Очистка буфера цвета и буфера глубины.
            Gl.glClear(Gl.GL_COLOR_BUFFER_BIT | Gl.GL_DEPTH_BUFFER_BIT);
            // Очищение текущей матрицы.
            Gl.glLoadIdentity();
            Gl.glColor3f(0, 0, 0);
            Gl.glBegin(Gl.GL_LINES);
            // Оси.
            Gl.glVertex2f(origin.X, origin.Y);
            Gl.glVertex2f(origin.X, height);
            Gl.glVertex2f(center.X, center.Y);
            Gl.glVertex2f(width, center.Y);
            // Стрелки.
            Gl.glVertex2f(origin.X, height);
            Gl.glVertex2f(origin.X - 50, height - 50);
            Gl.glVertex2f(origin.X, height);
            Gl.glVertex2f(origin.X + 50, height - 50);
            Gl.glVertex2f(width, center.Y);
            Gl.glVertex2f(width - 50, center.Y - 50);
            Gl.glVertex2f(width, center.Y);
            Gl.glVertex2f(width - 50, center.Y + 50);
            Gl.glEnd();
            // Подписи осей.
            Gl.glRasterPos2f(origin.X + 100, height - 100);
            Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_9_BY_15, 'U');
            Gl.glRasterPos2f(width - 100, center.Y + 100);
            Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_9_BY_15, 't');
            // Штрихи.
            for (int i = (int)origin.Y + 50; i < height; i += 100)
            {
                Gl.glBegin(Gl.GL_LINES);
                Gl.glVertex2f(origin.X - 25, i);
                Gl.glVertex2f(origin.X + 25, i);
                Gl.glEnd();
            }
            for (int i = (int)origin.X + 100; i < height; i += 100)
            {
                Gl.glBegin(Gl.GL_LINES);
                Gl.glVertex2f(i, center.Y + 25);
                Gl.glVertex2f(i, center.Y - 25);
                Gl.glEnd();
            }
            // График.
            Gl.glColor3f(255, 0, 0);
            Gl.glBegin(Gl.GL_LINE_STRIP);
            foreach (PointF point in velocityGraphPoints)
            {
                Gl.glVertex2f(center.X + point.X / timeScale * 100f, center.Y + point.Y / velocityScale * 100f * 100f);
            }
            Gl.glEnd();
        }

        void DrawEnergyGraph(float kineticEnergy, float potentialEnergy)
        {
            PointF origin = new PointF(50, 50);
            float height = 950;
            float energyScale = (float)energyScaleUpDown.Value;
            // Очистка буфера цвета и буфера глубины.
            Gl.glClear(Gl.GL_COLOR_BUFFER_BIT | Gl.GL_DEPTH_BUFFER_BIT);
            // Очищение текущей матрицы.
            Gl.glLoadIdentity();
            Gl.glColor3f(0, 0, 0);
            Gl.glBegin(Gl.GL_LINES);
            // Ось.
            Gl.glVertex2f(origin.X, origin.Y);
            Gl.glVertex2f(origin.X, height);
            // Стрелка.
            Gl.glVertex2f(origin.X, height);
            Gl.glVertex2f(origin.X - 50, height - 50);
            Gl.glVertex2f(origin.X, height);
            Gl.glVertex2f(origin.X + 50, height - 50);
            Gl.glEnd();
            // Подпись оси.
            Gl.glRasterPos2f(origin.X + 100, height - 50);
            foreach (char c in "Ek, Ep")
                Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_HELVETICA_12, c);
            // Штрихи.
            for (int i = (int)origin.Y + 100; i < height; i += 100)
            {
                Gl.glBegin(Gl.GL_LINES);
                Gl.glVertex2f(origin.X - 25, i);
                Gl.glVertex2f(origin.X + 25, i);
                Gl.glEnd();
            }
            // График.
            Gl.glColor3f(255, 0, 0);
            Gl.glBegin(Gl.GL_LINES);
            Gl.glVertex2f(origin.X + 50f, origin.Y);
            Gl.glVertex2f(origin.X + 50f, origin.Y + kineticEnergy / energyScale * 100f * 100f);
            Gl.glEnd();
            Gl.glBegin(Gl.GL_LINES);
            Gl.glVertex2f(origin.X + 100f, origin.Y);
            Gl.glVertex2f(origin.X + 100f, origin.Y + potentialEnergy / energyScale * 100f * 100f);
            Gl.glEnd();
        }

        void PrintInfo(float t, float T, float angle, float angVel, float angAcc, float Fg, float Ft, float Fp, float tension, float Ek, float Ep)
        {
            timeLabel.Text = $"Время: {t}";
            periodLabel.Text = $"Период: {T}";
            angleLabel.Text = $"Угол: {angle} ({Degrees(angle)}°)";
            angularVelLabel.Text = $"Угл. скорость: {angVel}";
            angularAccLabel.Text = $"Угл. ускорение: {angAcc}";
            gravityForceLabel.Text = $"Сила тяжести: {Fg}";
            tangentForceLabel.Text = $"Сила по касат. к дуге: {Ft}";
            perpendForceLabel.Text = $"Сила перепен. дуге: {Fp}";
            tensionForceLabel.Text = $"Сила натяжения: {tension}";
            kineticEnergyLabel.Text = $"Кинтеич. энергия: {Ek}";
            potentialEnergyLabel.Text = $"Потенц. энергия: {Ep}";
        }

        float Radians(float degrees) => (float)Math.PI * degrees / 180;
        float Degrees(float radians) => radians * 180 / (float)Math.PI;
    }
}
