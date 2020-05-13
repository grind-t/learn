using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Tao.FreeGlut;
using Tao.OpenGl;

namespace WindowsFormsApp1
{
    public partial class Lab4Form : Form
    {
        // Размеры окна.
        float screenW, screenH;
        // Отношения сторон окна визуализации для корректного перевода координат мыши в координаты, принятые в программе.
        float devX, devY;
        // Массив, хранящий значения x, y точек графика.
        List<PointF> grapValuesArray = new List<PointF>();
        // Индекс массива, в котором хранятся координаты для красной точки для визуализации текущего кадра.
        int pointPosition = 0;
        // Вспомогательные переменные для построения линий от курсора мыши к координатным осям.
        float lineX, lineY;
        // Текущие координаты мыши.
        float mCoordX = 0, mCoordY = 0;
        // Границы координатной системы.
        float xMin, xMax, yMin, yMax;
        // Центр координатной системы.
        float centerX, centerY;
        // Цвета графика, осей, сетки, курсора, точки визуализации.
        Color plotColor = Color.Black;
        Color axesColor = Color.Black;
        Color gridColor = Color.Black;
        Color pointerColor = Color.Red;
        Color pointColor = Color.Red;


        public Lab4Form()
        {
            InitializeComponent();
            AnT.InitializeContexts();
            funcComboBox.SelectedIndex = 0;
        }

        private void Lab4Form_Load(object sender, EventArgs e)
        {
            Glut.glutInit();
            // Инициализация режима экрана. 
            Glut.glutInitDisplayMode(Glut.GLUT_RGB | Glut.GLUT_DOUBLE);
            // установка цвета очистки экрана (RGBA) 
            Gl.glClearColor(255, 255, 255, 1);
            // Установка порта вывода.
            Gl.glViewport(0, 0, AnT.Width, AnT.Height);
            // Старт счетчика, отвечающего за вызов функции визуализации сцены.
            PointInGrap.Start();
        }

        private void PointInGrap_Tick(object sender, EventArgs e)
        {
            // Обновление значений координатной системы.
            UpdateCoordSytemBounds();
            // Eсли мы дошли до последнего элемента массива. 
            if (pointPosition == grapValuesArray.Count - 1)
                pointPosition = 0; // Переходим к начальному элементу.
            switch (funcComboBox.SelectedIndex)
            {
                case 0:
                    functionCalculation((x) => (float)Math.Sin(x) * 3 + 1);
                    break;
                case 1:
                    functionCalculation((x) => Math.Abs(x) - 2);
                    break;
                case 2:
                    functionCalculation((x) => (float)Math.Exp(x) - 5);
                    break;
            }
            Draw();
            // Переход к следующему элементу массива.
            pointPosition++;
        }

        private void AnT_MouseMove(object sender, MouseEventArgs e)
        {
            // Cохраняем координаты мыши.
            mCoordX = e.X ; 
            mCoordY = e.Y;
            // Вычисляем параметры для будущей дорисовки линий от указателя мыши к координатным осям. 
            lineX = devX * mCoordX;
            lineY = (screenH - devY * mCoordY);
        }

        private void colorObjComboBox_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (colorDialog1.ShowDialog() != DialogResult.OK) return;
            switch (colorObjComboBox.SelectedIndex)
            {
                case 0:
                    plotColor = colorDialog1.Color;
                    break;
                case 1:
                    pointColor = colorDialog1.Color;
                    break;
                case 2:
                    gridColor = colorDialog1.Color;
                    break;
                case 3:
                    axesColor = colorDialog1.Color;
                    break;
                case 4:
                    pointerColor = colorDialog1.Color;
                    break;
            }
        }

        void UpdateCoordSytemBounds()
        {
            xMin = (float)xMinNumericUpDown.Value;
            xMax = (float)xMaxNumericUpDown.Value;
            yMin = (float)yMinNumericUpDown.Value;
            yMax = (float)yMaxNumericUpDown.Value;

            // Активация проекционной матрицы.
            Gl.glMatrixMode(Gl.GL_PROJECTION);
            // Очистка матрицы .
            Gl.glLoadIdentity();
            // Определение параметров настройки проекции в зависимости от размеров сторон элемента AnT. 
            if (AnT.Width <= AnT.Height)
            {
                screenW = xMax - xMin;
                screenH = (yMax - yMin) * AnT.Height / AnT.Width;
            }
            else
            {
                screenW = (xMax - xMin) * AnT.Width / AnT.Height;
                screenH = (yMax - yMin);
            }
            Glu.gluOrtho2D(0.0, screenW, 0.0, screenH);
            // Сохранение коэффициентов, которые нам необходимы для перевода координат указателя в оконной системе в координаты, принятые в нашей OpenGL сцене. 
            devX = screenW / AnT.Width;
            devY = screenH / AnT.Height;
            // Установка объектно-видовой матрицы.
            Gl.glMatrixMode(Gl.GL_MODELVIEW);

            centerX = -(screenW / 2) - xMin;
            centerY = -(screenH / 2) - yMin;
        }

        private void PrintText2D(float x, float y, string text) 
        {
            // Устанавливаем позицию вывода растровых символов в переданных координатах x и y. 
            Gl.glRasterPos2f(x, y);

            // В цикле foreach перебираем значения из массива text, который содержит значение строки для визуализации.
            foreach (char c in text)
            {
                // Символ визуализируем с помощью функции glutBitmapCharacter, используя шрифт GLUT_BITMAP_9_BY_15. 
                Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_9_BY_15, c);
            }
        }

        void functionCalculation(Func<float, float> func) 
        { 
            // Определение локальных переменных X и Y.
            float x = 0, y = 0;
            grapValuesArray.Clear();
            // Вычисления всех значений y для x, принадлежащего промежутку от -15 до 15 с шагом в 0.01f.
            for (x = xMin; x < xMax; x += 0.1f) 
            {
                // Вычисление y для текущего x по формуле y = (float)Math.Sin(x)*3 + 1; эта строка задает формулу, описывающую график функции для нашего уравнения y = f(x). 
                y = func(x);
                // Запись координаты x.
                grapValuesArray.Add(new PointF(centerX + x, centerY + y)); 
            } 
        }

        private void DrawDiagram() 
        { 
            // Стартуем отрисовку в режиме визуализации точек объединяемых в линии (GL_LINE_STRIP).
            Gl.glBegin(Gl.GL_LINE_STRIP); 
            // Проходим по массиву с координатами вычисленных точек.
            for (int i = 0; i < grapValuesArray.Count; i++) 
            { 
                // Передаем в OpenGL информацию о вершине, участвующей в построении линий.
                Gl.glVertex2d(grapValuesArray[i].X, grapValuesArray[i].Y); 
            } 
            // Завершаем режим рисования.
            Gl.glEnd();
            // Устанавливаем размер точек, равный 5 пикселям.
            Gl.glPointSize(5);
            Gl.glColor3ub(pointColor.R, pointColor.G, pointColor.B);
            // Активируем режим вывода точек (GL_POINTS).
            Gl.glBegin(Gl.GL_POINTS); 
            // Выводим красную точку, используя ту ячейку массива, до которой мы дошли (вычисляется в функции обработчике событий таймера).
            Gl.glVertex2d(grapValuesArray[pointPosition].X, grapValuesArray[pointPosition].Y); 
            // Завершаем режим рисования.
            Gl.glEnd(); 
            // Устанавливаем размер точек равный единице.
            Gl.glPointSize(1); 
        }

        private void Draw() 
        {
            // Очистка буфера цвета и буфера глубины.
            Gl.glClear(Gl.GL_COLOR_BUFFER_BIT | Gl.GL_DEPTH_BUFFER_BIT);
            // Очищение текущей матрицы.
            Gl.glLoadIdentity();             
            // Помещаем состояние матрицы в стек матриц.
            Gl.glPushMatrix();
            // Выполняем перемещение в пространстве по осям X и Y.
            Gl.glTranslated(screenW / 2, screenH / 2, 0);
            // Активируем режим рисования (указанные далее точки будут выводиться как точки GL_POINTS).
            Gl.glBegin(Gl.GL_POINTS);
            // С помощью прохода вдумя циклами, создаем сетку из точек.
            Gl.glColor3ub(gridColor.R, gridColor.G, gridColor.B);
            for (float ax = xMin; ax < xMax; ax++)
                for (float bx = yMin; bx < yMax; bx++)
                    Gl.glVertex2d(centerX + ax, centerY + bx);
            // Завершение режима рисования примитивов.
            Gl.glEnd();
            // Активируем режим рисования, каждые 2 последовательно вызванные команды glVertex объединяются в линии.
            Gl.glColor3ub(axesColor.R, axesColor.G, axesColor.B);
            Gl.glBegin(Gl.GL_LINES);
            // Далее мы рисуем координатные оси и стрелки на их концах.
            Gl.glVertex2d(centerX, centerY + yMin);
            Gl.glVertex2d(centerX, centerY + yMax);
            Gl.glVertex2d(centerX + xMin, centerY);
            Gl.glVertex2d(centerX + xMax, centerY);
            // Вертикальная стрелка.
            Gl.glVertex2d(centerX, centerY + yMax);
            Gl.glVertex2d(centerX + 0.1, centerY + yMax - 0.5);
            Gl.glVertex2d(centerX, centerY + yMax);
            Gl.glVertex2d(centerX - 0.1, centerY + yMax - 0.5);
            // Горизонтальная стрелка.
            Gl.glVertex2d(centerX + xMax, centerY);
            Gl.glVertex2d(centerX + xMax - 0.5, centerY + 0.1);
            Gl.glVertex2d(centerX + xMax, centerY);
            Gl.glVertex2d(centerX + xMax - 0.5, centerY - 0.1);
            // Завершаем режим рисования.
            Gl.glEnd();
            // Выводим подписи осей "x" и "y".
            PrintText2D(centerX + xMax, centerY - 0.5f, "x");
            PrintText2D(centerX + 0.5f, centerY + yMax - 0.5f, "y");
            // Вызываем функцию рисования графика.
            Gl.glColor3ub(plotColor.R, plotColor.G, plotColor.B);
            DrawDiagram();
            // Возвращаем матрицу из стека.
            Gl.glPopMatrix();
            // Выводим текст со значением координат возле курсора.
            Gl.glColor3ub(pointerColor.R, pointerColor.G, pointerColor.B);
            PrintText2D(devX * mCoordX + 0.2f, screenH - devY * mCoordY + 0.4f, $"[x:{devX * mCoordX - (centerX + screenW / 2)}; y:{screenH - devY * mCoordY - (centerY + screenH / 2)}]");
            // Включаем режим рисования линий, для того чтобы нарисовать линии от курсора мыши к координатным осям.
            Gl.glBegin(Gl.GL_LINES);
            Gl.glVertex2d(lineX, centerY + screenH / 2);
            Gl.glVertex2d(lineX, lineY);
            Gl.glVertex2d(centerX + screenW / 2, lineY);
            Gl.glVertex2d(lineX, lineY);
            Gl.glEnd();
            // Дожидаемся завершения визуализации кадра.
            Gl.glFlush();
            // Сигнал для обновление элемента реализующего визуализацию. 
            AnT.Invalidate();
        }
    }
}
