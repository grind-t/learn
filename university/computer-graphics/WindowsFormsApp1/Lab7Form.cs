using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using Tao.FreeGlut;
using Tao.OpenGl;
using Tao.Platform.Windows;

namespace WindowsFormsApp1
{
    public partial class Lab7Form : Form
    {
        Camera cam;
        float OA;
        float AB;
        float AM;
        float t;
        List<Vector2> mPath = new List<Vector2>();

        struct SliderCrankPoints
        {
            public Vector2 A;
            public Vector2 B;
            public Vector2 M;
        }

        public Lab7Form()
        {
            InitializeComponent();
            AnT.InitializeContexts();
        }

        // Возвращает точки КШМ для случая OA < AB.
        SliderCrankPoints OAShorterAB(float fi)
        {
            float psi = (float)Math.Asin(OA * Math.Sin(fi) / AB);
            return new SliderCrankPoints
            {
                A = new Vector2(OA * (float)Math.Cos(fi), OA * (float)Math.Sin(fi)),
                B = new Vector2(OA * (float)Math.Cos(fi) + AB * (float)Math.Cos(psi), 0),
                M = new Vector2(OA * (float)Math.Cos(fi) + AM * (float)Math.Cos(psi), (AB - AM) * (float)Math.Sin(psi))
            };
        }

        // Возвращает точки КШМ для случая OA == AB.
        SliderCrankPoints OAEqualAB(float fi)
        {
            return new SliderCrankPoints
            {
                A = new Vector2(OA * (float)Math.Cos(fi), OA * (float)Math.Sin(fi)),
                B = new Vector2((OA + AB) * (float)Math.Cos(fi), 0),
                M = new Vector2((OA + AM) * (float)Math.Cos(fi), (AB - AM) * (float)Math.Sin(fi))
            };
        }

        // Возвращает точки КШМ для случая OA > AB.
        SliderCrankPoints OALongerAB(float fi)
        {
            float maxfi = (float)Math.Asin(AB / OA);
            int state = (int)(fi / maxfi) % 4;
            fi %= maxfi;
            if (state == 1) fi = maxfi - fi;
            else if (state == 2) fi = -fi;
            else if (state == 3) fi = -maxfi + fi;

            if (state == 1 || state == 2)
            {
                float MB = AB - AM;
                float AK = OA * (float)Math.Sin(fi);
                float ABKAngle = (float)Math.Asin(AK / AB);
                float OB = OA * (float)Math.Cos(fi) - AB * (float)Math.Cos(ABKAngle);
                return new SliderCrankPoints
                {
                    A = new Vector2(OA * (float)Math.Cos(fi), OA * (float)Math.Sin(fi)),
                    B = new Vector2(OB, 0),
                    M = new Vector2(OB + MB * (float)Math.Cos(ABKAngle), MB * (float)Math.Sin(ABKAngle))
                };
            }
            else
                return OAShorterAB(fi);
        }

        void DrawScene()
        {
            Vector2 O = Vector2.Zero;
            SliderCrankPoints points;
            float fi = (float)Math.PI * t;

            if (OA < AB)
                points = OAShorterAB(fi);
            else if (OA == AB)
                points = OAEqualAB(fi);
            else
                points = OALongerAB(fi);

            mPath.Add(points.M);

            Gl.glColor3f(0, 0, 1);
            Gl.glRasterPos2f(O.X - 0.5f, O.Y + 1);
            Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_HELVETICA_10, 'O');
            Gl.glRasterPos2f(points.A.X - 0.5f, points.A.Y + 1);
            Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_HELVETICA_10, 'A');
            Gl.glRasterPos2f(points.M.X - 0.5f, points.M.Y + 1);
            Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_HELVETICA_10, 'M');
            Gl.glRasterPos2f(points.B.X - 0.5f, points.B.Y + 1);
            Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_HELVETICA_10, 'B');

            Gl.glColor3f(0, 0, 0);
            Gl.glBegin(Gl.GL_LINE_STRIP);
            Gl.glVertex2f(O.X, O.Y);
            Gl.glVertex2f(points.A.X, points.A.Y);
            Gl.glVertex2f(points.M.X, points.M.Y);
            Gl.glVertex2f(points.B.X, points.B.Y);
            Gl.glEnd();
            float pistonHalfWidth = 1;
            float pistonHalfHeight = 0.5f;
            Gl.glBegin(Gl.GL_LINE_LOOP);
            Gl.glVertex2f(points.B.X - pistonHalfWidth, points.B.Y - pistonHalfHeight);
            Gl.glVertex2f(points.B.X - pistonHalfWidth, points.B.Y + pistonHalfHeight);
            Gl.glVertex2f(points.B.X + pistonHalfWidth, points.B.Y + pistonHalfHeight);
            Gl.glVertex2f(points.B.X + pistonHalfWidth, points.B.Y - pistonHalfHeight);
            Gl.glEnd();

            if (mPathCheckBox.Checked)
            {
                Gl.glColor3f(1, 0, 0);
                Gl.glBegin(Gl.GL_LINE_STRIP);
                foreach (var point in mPath)
                    Gl.glVertex2f(point.X, point.Y);
                Gl.glEnd();
            }
        }

        private void Lab7Form_Load(object sender, EventArgs e)
        {
            Glut.glutInit();
            Glut.glutInitDisplayMode(Glut.GLUT_RGB | Glut.GLUT_DOUBLE);

            Gl.glClearColor(255, 255, 255, 1);
            Gl.glViewport(0, 0, AnT.Width, AnT.Height);
            Gl.glMatrixMode(Gl.GL_PROJECTION);
            Gl.glLoadIdentity();
            Glu.gluPerspective(45, AnT.Width / AnT.Height, 0.1, 200);
            Gl.glMatrixMode(Gl.GL_MODELVIEW);
            Gl.glLoadIdentity();

            rotationComboBox.SelectedIndex = 0;
            cam = new Camera
            {
                pos = new Vector3(xTrackBar.Value, yTrackBar.Value, zTrackBar.Value),
                rotation = new Rotation { angle = angleTrackBar.Value, vector = Vector3.UnitX },
                zoom = zoomTrackBar.Value
            };
            OA = (float)OAUpDown.Value;
            AB = (float)ABUpDown.Value;
            AM = (float)AMUpDown.Value;
            renderTimer.Interval = renderIntervalTrackBar.Value;

            renderTimer.Start();
        }

        private void renderTimer_Tick(object sender, EventArgs e)
        {
            Gl.glClear(Gl.GL_COLOR_BUFFER_BIT | Gl.GL_DEPTH_BUFFER_BIT);
            Gl.glClearColor(255, 255, 255, 1);
            Gl.glLoadIdentity();

            Gl.glPushMatrix();
            Gl.glTranslatef(cam.pos.X, cam.pos.Y, cam.pos.Z);
            Gl.glRotatef(cam.rotation.angle, cam.rotation.vector.X, cam.rotation.vector.Y, cam.rotation.vector.Z);
            Gl.glScalef(cam.zoom, cam.zoom, cam.zoom);
            DrawScene();
            Gl.glPopMatrix();

            Gl.glFlush();
            AnT.Invalidate();
            t += 0.01f;
        }

        private void rotationComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            cam.rotation.vector.X =
                rotationComboBox.SelectedIndex == 0 ? 1 : 0;
            cam.rotation.vector.Y =
                rotationComboBox.SelectedIndex == 1 ? 1 : 0;
            cam.rotation.vector.Z =
                rotationComboBox.SelectedIndex == 2 ? 1 : 0;
        }

        private void xTrackBar_Scroll(object sender, EventArgs e)
        {
            cam.pos.X = xTrackBar.Value;
            xLabel.Text = $"x({cam.pos.X}):";
        }

        private void yTrackBar_Scroll(object sender, EventArgs e)
        {
            cam.pos.Y = yTrackBar.Value;
            yLabel.Text = $"y({cam.pos.Y}):";
        }

        private void zTrackBar_Scroll(object sender, EventArgs e)
        {
            cam.pos.Z = zTrackBar.Value;
            zLabel.Text = $"z({cam.pos.Z}):";
        }

        private void angleTrackBar_Scroll(object sender, EventArgs e)
        {
            cam.rotation.angle = angleTrackBar.Value;
            angleLabel.Text = $"angle({cam.rotation.angle}):";
        }

        private void zoomTrackBar_Scroll(object sender, EventArgs e)
        {
            cam.zoom = zoomTrackBar.Value;
            zoomLabel.Text = $"zoom({cam.zoom}):";
        }

        private void OAUpDown_ValueChanged(object sender, EventArgs e)
        {
            mPath.Clear();
            OA = (float)OAUpDown.Value;
        }

        private void ABUpDown_ValueChanged(object sender, EventArgs e)
        {
            mPath.Clear();
            AB = (float)ABUpDown.Value;
        }

        private void AMUpDown_ValueChanged(object sender, EventArgs e)
        {
            mPath.Clear();
            AM = (float)AMUpDown.Value;
        }

        private void renderIntervalTrackBar_ValueChanged(object sender, EventArgs e)
        {
            renderTimer.Interval = renderIntervalTrackBar.Value;
            renderIntervalLabel.Text = $"Время перерисовки({renderTimer.Interval} мс):";
        }
    }
}
