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
    public partial class Lab3Form : Form
    {
        public Lab3Form()
        {
            InitializeComponent();
            AnT.InitializeContexts();
        }

        private void Lab3Form_Load(object sender, EventArgs e)
        {
            Glut.glutInit();
            /* Установка: 
             * RGB режима визуализации.
             * Двойной буферизации (устранения мерцаний при перерисовке).
             * Использования буфера глубины. */
            Glut.glutInitDisplayMode(Glut.GLUT_RGB | Glut.GLUT_DOUBLE | Glut.GLUT_DEPTH);

            // Очистка окна белым цветом.
            Gl.glClearColor(255, 255, 255, 1);

            // Установка порта вывода в соответствии с размерами элемента AnT.
            Gl.glViewport(0, 0, AnT.Width, AnT.Height);


            // Текущая матрица - матрица проекции, над которой будут производится операции.
            Gl.glMatrixMode(Gl.GL_PROJECTION);
            // Очистка матрицы.
            Gl.glLoadIdentity();
            // Создание пирамиды охвата видимости.
            Glu.gluPerspective(45, AnT.Width / AnT.Height, 0.1, 200);
            // Текущая матрица - объектно видовая матрица.
            Gl.glMatrixMode(Gl.GL_MODELVIEW);
            // Очистка матрицы.
            Gl.glLoadIdentity();

            // Включение теста глубины.
            Gl.glEnable(Gl.GL_DEPTH_TEST);
            // Включение отображения цветов материалов для рисуемой геометрии.
            Gl.glEnable(Gl.GL_LIGHTING);
            Gl.glEnable(Gl.GL_LIGHT0);

            comboBox1.SelectedIndex = 0;
            comboBox2.SelectedIndex = 0;

            renderTimer.Start();
        }

        private void renderTimer_Tick(object sender, EventArgs e)
        {
            int selectedAxis = comboBox1.SelectedIndex;
            int osx = selectedAxis == 0 ? 1 : 0;
            int osy = selectedAxis == 1 ? 1 : 0;
            int osz = selectedAxis == 2 ? 1 : 0;
            int selectedObject = comboBox2.SelectedIndex;
            bool wire = checkBox1.Checked;
            int x = trackBar1.Value;
            int y = trackBar2.Value;
            int z = trackBar3.Value;
            int angle = trackBar4.Value;
            float zoom = trackBar5.Value * 0.1f;
            Debug.WriteLine($"x:{x}, y:{y}, z:{z}, angle:{angle}, zoom:{zoom}");

            // Очистка буфера цвета и буфера глубины.
            Gl.glClear(Gl.GL_COLOR_BUFFER_BIT | Gl.GL_DEPTH_BUFFER_BIT);

            // Очистка матрицы.
            Gl.glLoadIdentity();

            // Перемещение текущей матрицы в стек матриц (пока она там, операции не будут ее затрагивать).
            Gl.glPushMatrix();
            // Перемещение объекта на 6 единиц по оси Z.
            Gl.glTranslated(x, y, z);
            // Поворот объекта на 45 градусов по оси X и Y.
            Gl.glRotated(angle, osx, osy, osz);
            Gl.glScalef(1 + zoom, 1 + zoom, 1 + zoom);

            
            switch (selectedObject)
            {
                case 0:
                    if (wire) Glut.glutWireSphere(1, 32, 32);
                    else Glut.glutSolidSphere(1, 32, 32);
                    break;
                case 1:
                    if (wire) Glut.glutWireCylinder(1, 1.5, 32, 32);
                    else Glut.glutSolidCylinder(1, 1.5, 32, 32);
                    break;
                case 2:
                    if (wire) Glut.glutWireCube(1);
                    else Glut.glutSolidCube(1);
                    break;
                case 3:
                    if (wire) Glut.glutWireCone(1, 2, 32, 32);
                    else Glut.glutSolidCone(1, 2, 32, 32);
                    break;
                case 4:
                    if (wire) Glut.glutWireTorus(0.5, 1, 32, 32);
                    else Glut.glutSolidTorus(0.5, 1, 32, 32);
                    break;
                case 5:
                    if (wire)
                    {
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -1);
                        Glut.glutWireCylinder(0.1, 0.5, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -0.6);
                        Glut.glutWireCone(0.5, 0.5, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -0.2);
                        Glut.glutWireCone(0.4, 0.5, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, 0.2);
                        Glut.glutWireCone(0.2, 0.5, 32, 32);
                        Gl.glPopMatrix();
                    }
                    else
                    {
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -1);
                        Glut.glutSolidCylinder(0.1, 0.5, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -0.6);
                        Glut.glutSolidCone(0.5, 0.5, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -0.2);
                        Glut.glutSolidCone(0.4, 0.5, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, 0.2);
                        Glut.glutSolidCone(0.2, 0.5, 32, 32);
                        Gl.glPopMatrix();
                    }
                    break;
                case 6:
                    if (wire)
                    {
                        // Шляпа.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, 0.65);
                        Glut.glutWireCone(0.3, 0.3, 32, 32);
                        Gl.glPopMatrix();

                        // Тело.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -1);
                        Glut.glutWireSphere(0.5, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -0.2);
                        Glut.glutWireSphere(0.4, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, 0.4);
                        Glut.glutWireSphere(0.3, 32, 32);
                        Gl.glPopMatrix();

                        // Глаза.
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.1, -0.25, 0.45);
                        Glut.glutWireSphere(0.05, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.1, -0.25, 0.45);
                        Glut.glutWireSphere(0.05, 32, 32);
                        Gl.glPopMatrix();

                        // Нос.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, -0.25, 0.4);
                        Gl.glRotated(90, 1, 0, 0);
                        Glut.glutWireCone(0.05, 0.2, 32, 32);
                        Gl.glPopMatrix();

                        // Левая рука.
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.8, 0, -0.5);
                        Gl.glRotated(45, 0, 1, 0);
                        Glut.glutWireCylinder(0.05, 0.8, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.79, 0, -0.3);
                        Gl.glRotated(135, 0, 1, 0);
                        Glut.glutWireCylinder(0.05, 0.1, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.7, 0, -0.4);
                        Gl.glRotated(135, 0, 1, 0);
                        Glut.glutWireCylinder(0.05, 0.1, 32, 32);
                        Gl.glPopMatrix();

                        // Правая рука.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.8, 0, -0.5);
                        Gl.glRotated(-45, 0, 1, 0);
                        Glut.glutWireCylinder(0.05, 0.8, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.79, 0, -0.3);
                        Gl.glRotated(-135, 0, 1, 0);
                        Glut.glutWireCylinder(0.05, 0.1, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.69, 0, -0.4);
                        Gl.glRotated(-135, 0, 1, 0);
                        Glut.glutWireCylinder(0.05, 0.1, 32, 32);
                        Gl.glPopMatrix();

                        // Левая нога.
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.3, 0, -1.4);
                        Glut.glutWireSphere(0.2, 32, 32);
                        Gl.glPopMatrix();

                        // Правая нога.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.3, 0, -1.4);
                        Glut.glutWireSphere(0.2, 32, 32);
                        Gl.glPopMatrix();
                    }
                    else
                    {
                        // Шляпа.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, 0.65);
                        Glut.glutSolidCone(0.3, 0.3, 32, 32);
                        Gl.glPopMatrix();

                        // Тело.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -1);
                        Glut.glutSolidSphere(0.5, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, -0.2);
                        Glut.glutSolidSphere(0.4, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, 0, 0.4);
                        Glut.glutSolidSphere(0.3, 32, 32);
                        Gl.glPopMatrix();

                        // Глаза.
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.1, -0.25, 0.45);
                        Glut.glutSolidSphere(0.05, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.1, -0.25, 0.45);
                        Glut.glutSolidSphere(0.05, 32, 32);
                        Gl.glPopMatrix();

                        // Нос.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0, -0.25, 0.4);
                        Gl.glRotated(90, 1, 0, 0);
                        Glut.glutSolidCone(0.05, 0.2, 32, 32);
                        Gl.glPopMatrix();

                        // Левая рука.
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.8, 0, -0.5);
                        Gl.glRotated(45, 0, 1, 0);
                        Glut.glutSolidCylinder(0.05, 0.8, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.79, 0, -0.3);
                        Gl.glRotated(135, 0, 1, 0);
                        Glut.glutSolidCylinder(0.05, 0.1, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.7, 0, -0.4);
                        Gl.glRotated(135, 0, 1, 0);
                        Glut.glutSolidCylinder(0.05, 0.1, 32, 32);
                        Gl.glPopMatrix();

                        // Правая рука.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.8, 0, -0.5);
                        Gl.glRotated(-45, 0, 1, 0);
                        Glut.glutSolidCylinder(0.05, 0.8, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.79, 0, -0.3);
                        Gl.glRotated(-135, 0, 1, 0);
                        Glut.glutSolidCylinder(0.05, 0.1, 32, 32);
                        Gl.glPopMatrix();
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.69, 0, -0.4);
                        Gl.glRotated(-135, 0, 1, 0);
                        Glut.glutSolidCylinder(0.05, 0.1, 32, 32);
                        Gl.glPopMatrix();

                        // Левая нога.
                        Gl.glPushMatrix();
                        Gl.glTranslated(-0.3, 0, -1.4);
                        Glut.glutSolidSphere(0.2, 32, 32);
                        Gl.glPopMatrix();

                        // Правая нога.
                        Gl.glPushMatrix();
                        Gl.glTranslated(0.3, 0, -1.4);
                        Glut.glutSolidSphere(0.2, 32, 32);
                        Gl.glPopMatrix();
                    }
                    break;
            }

            // Возвращение матрицы из стека.
            Gl.glPopMatrix();
            // Ожидание завершения визуализации кадра.
            Gl.glFlush();
            // Вызываем перерисовку элемента AnT.
            AnT.Invalidate();
        }
    }
}
