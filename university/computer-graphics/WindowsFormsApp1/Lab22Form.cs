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

namespace WindowsFormsApp1
{
    public partial class Lab22Form : Form
    {
        public Lab22Form()
        {
            InitializeComponent();
            AnT.InitializeContexts();
        }

        private void Lab2Form_Load(object sender, EventArgs e)
        {
            // инициализация Glut 
            Glut.glutInit();
            Glut.glutInitDisplayMode(Glut.GLUT_RGB | Glut.GLUT_SINGLE);

            // очистка окна 
            Gl.glClearColor(255, 255, 255, 1);

            // установка порта вывода в соответствии с размерами элемента anT 
            Gl.glViewport(0, 0, AnT.Width, AnT.Height);

            // настройка проекции 
            Gl.glMatrixMode(Gl.GL_PROJECTION);
            Gl.glLoadIdentity();

            // теперь необходимо корректно настроить 2D ортогональную проекцию 
            // в зависимости от того, какая сторона больше 
            // мы немного варьируем то, как будет сконфигурированный настройки проекции 
            if ((float)AnT.Width <= (float)AnT.Height)
            {
                Glu.gluOrtho2D(0.0, 30.0 * (float)AnT.Height / (float)AnT.Width, 0.0, 30.0);
            }
            else
            {
                Glu.gluOrtho2D(0.0, 30.0 * (float)AnT.Width / (float)AnT.Height, 0.0, 30.0);
            }
            Gl.glMatrixMode(Gl.GL_MODELVIEW);
            Gl.glLoadIdentity();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int X0 = (int)X0NumericUpDown.Value;
            int Y0 = (int)Y0NumericUpDown.Value;
            int W = (int)WNumericUpDown.Value;
            int H = (int)HNumericUpDown.Value;
            int d = (int)dNumericUpDown.Value;
            double wideW = 1.5 * W;
            int X1 = X0 + W + d;
            int X2 = X1 + W + d;

            // очищаем буфер цвета 
            Gl.glClear(Gl.GL_COLOR_BUFFER_BIT);

            // очищаем текущую матрицу 
            Gl.glLoadIdentity();
            // устанавливаем текущий цвет - красный 
            Gl.glColor3f(255, 0, 0);

            if (showBoundsCheckBox.Checked)
            {
                // Прямоугольник для первой буквы Г.
                Gl.glBegin(Gl.GL_LINE_LOOP);
                Gl.glVertex2d(X0, Y0);
                Gl.glVertex2d(X0, Y0 + H);
                Gl.glVertex2d(X0 + W, Y0 + H);
                Gl.glVertex2d(X0 + W, Y0);
                Gl.glEnd();

                // Прямоугольник для второй бувы Г.
                Gl.glBegin(Gl.GL_LINE_LOOP);
                Gl.glVertex2d(X1, Y0);
                Gl.glVertex2d(X1, Y0 + H);
                Gl.glVertex2d(X1 + W, Y0 + H);
                Gl.glVertex2d(X1 + W, Y0);
                Gl.glEnd();

                // Прямоугольник для буквы Ю.
                Gl.glBegin(Gl.GL_LINE_LOOP);
                Gl.glVertex2d(X2, Y0);
                Gl.glVertex2d(X2, Y0 + H);
                Gl.glVertex2d(X2 + wideW, Y0 + H);
                Gl.glVertex2d(X2 + wideW, Y0);
                Gl.glEnd();
            }

            double charThickness = 0.2 * W;

            // Первая г.
            Gl.glBegin(Gl.GL_LINE_LOOP);
            Gl.glVertex2d(X0, Y0);
            Gl.glVertex2d(X0, Y0 + H);
            Gl.glVertex2d(X0 + W, Y0 + H);
            Gl.glVertex2d(X0 + W, Y0 + H - charThickness);
            Gl.glVertex2d(X0 + charThickness, Y0 + H - charThickness);
            Gl.glVertex2d(X0 + charThickness, Y0);
            Gl.glEnd();

            // Вторая г.
            Gl.glBegin(Gl.GL_LINE_LOOP);
            Gl.glVertex2d(X1, Y0);
            Gl.glVertex2d(X1, Y0 + H);
            Gl.glVertex2d(X1 + W, Y0 + H);
            Gl.glVertex2d(X1 + W, Y0 + H - charThickness);
            Gl.glVertex2d(X1 + charThickness, Y0 + H - charThickness);
            Gl.glVertex2d(X1 + charThickness, Y0);
            Gl.glEnd();

            // Ю.
            Gl.glBegin(Gl.GL_LINE_LOOP);
            Gl.glVertex2d(X2, Y0);
            Gl.glVertex2d(X2, Y0 + H);
            Gl.glVertex2d(X2 + charThickness, Y0 + H);
            Gl.glVertex2d(X2 + charThickness, Y0 + H/2 + charThickness/2);
            Gl.glVertex2d(X2 + 0.4 * wideW, Y0 + H/2 + charThickness/2);
            for (int i = 180; i > -180; i--)
            {
                double radians = i * (Math.PI / 180);
                Gl.glVertex2d(X2 + 0.7 * wideW + 0.3 * wideW * Math.Cos(radians), Y0 + H / 2 + Math.Sin(radians) * H * 0.5);
            }
            Gl.glVertex2d(X2 + 0.4 * wideW, Y0 + H/2 - charThickness/2);
            Gl.glVertex2d(X2 + charThickness, Y0 + H/2 - charThickness/2);
            Gl.glVertex2d(X2 + charThickness, Y0);
            Gl.glEnd();

            Gl.glBegin(Gl.GL_LINE_LOOP);
            for (int i = 180; i > -180; i--)
            {
                double radians = i * (Math.PI / 180);
                Gl.glVertex2d(X2 + 0.7 * wideW + 0.2 * wideW * Math.Cos(radians), Y0 + H / 2 + Math.Sin(radians) * H * 0.4);
            }
            Gl.glEnd();


            // дожидаемся конца визуализации кадра 
            Gl.glFlush();

            // посылаем сигнал перерисовки элемента AnT. 
            AnT.Invalidate();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
