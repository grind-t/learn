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
    public partial class Lab1Form : Form
    {
        public Lab1Form()
        {
            InitializeComponent();
            AnT.InitializeContexts();
        }

        private void Lab1Form_Load(object sender, EventArgs e)
        {
            // Инициализация Glut.
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
            Gl.glEnable(Gl.GL_COLOR_MATERIAL);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Очистка буфера цвета и буфера глубины.
            Gl.glClear(Gl.GL_COLOR_BUFFER_BIT | Gl.GL_DEPTH_BUFFER_BIT);

            // Очистка матрицы.
            Gl.glLoadIdentity();
            // Установка красного цвета отрисовки геометрии.
            Gl.glColor3f(255, 0, 0);

            // Перемещение текущей матрицы в стек матриц (пока она там, операции не будут ее затрагивать).
            Gl.glPushMatrix();
            // Перемещение объекта на 6 единиц по оси Z.
            Gl.glTranslated(0, 0, -6);
            // Поворот объекта на 45 градусов по оси X и Y.
            Gl.glRotated(45, 1, 1, 0);

            // Рисование сферы радиусом 2, разделенной на 32 меридиана и 32 параллели.
            Glut.glutWireSphere(2, 32, 32);

            // Возвращение матрицы из стека.
            Gl.glPopMatrix();
            // Ожидание завершения визуализации кадра.
            Gl.glFlush();
            // Вызываем перерисовку элемента AnT.
            AnT.Invalidate();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
