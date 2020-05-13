using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Numerics;

using Tao.FreeGlut;
using Tao.OpenGl;
using Tao.Platform.Windows;
using Tao.DevIl;
using System.Diagnostics.Eventing.Reader;

namespace WindowsFormsApp1
{
    public struct Rotation
    {
        public float angle;
        public Vector3 vector;
    }

    public struct Camera
    {
        public Vector3 pos;
        public Rotation rotation;
        public float zoom;
    }

    public struct GlMaterial
    {
        public readonly bool useTexture;
        public readonly float[] color;
        public readonly float[] shiness;
        public readonly uint texture;

        public GlMaterial(float[] color, float shiness)
        {
            useTexture = false;
            this.color = color;
            this.shiness = new float[] { shiness };
            texture = 0;
        }

        public GlMaterial(Color color, float shiness) : 
            this(new float[] { color.R / 255, color.G / 255, color.B / 255, color.A / 255 }, shiness) { }

        public GlMaterial(uint texture)
        {
            useTexture = true;
            color = null;
            shiness = null;
            this.texture = texture;
        }
    }

    public enum Direction
    {
        NONE,
        UP,
        DOWN,
        LEFT,
        RIGHT
    }

    public partial class Lab6Form : Form
    {
        // Камера.
        Camera cam;
        // Режим отрисовки.
        bool wireMode;
        // Яблоки.
        int appleDiametr;
        List<Vector3> apples;
        Random random;
        // Сетка.
        int gridRows, gridColumns;
        // Змейка.
        List<Vector3> snake;
        Direction dir;
        // Материалы.
        GlMaterial gridMaterial;
        GlMaterial appleBodyMaterial, appleBranchMaterial, appleLeafMaterial;
        GlMaterial snakeHeadMaterial, snakeBodyMaterial, snakeTailMaterial;

        Direction Dir
        {
            get => dir;
            set
            {
                bool vertical(Direction d) => d == Direction.UP || d == Direction.DOWN;
                bool horizontal(Direction d) => d == Direction.LEFT || d == Direction.RIGHT;
                if (vertical(dir) && vertical(value) || horizontal(dir) && horizontal(value))
                    return;
                dir = value;
            }
        }

        public Lab6Form()
        {
            InitializeComponent();
            AnT.InitializeContexts();
        }

        void setGlColor(float[] color, float[] shiness)
        {
            Gl.glMaterialfv(Gl.GL_FRONT, Gl.GL_DIFFUSE, color);
            Gl.glMaterialfv(Gl.GL_FRONT, Gl.GL_SPECULAR, color);
            Gl.glMaterialfv(Gl.GL_FRONT, Gl.GL_SHININESS, shiness);
        }

        void DrawSphere(float radius, int slices, int stacks, float[] color, float[] shiness)
        {
            setGlColor(color, shiness);
            Glut.glutSolidSphere(radius, slices, stacks);
        }

        void DrawSphere(float radius, int slices, int stacks, uint texture)
        {
            Glu.GLUquadric quadr = Glu.gluNewQuadric();
            Glu.gluQuadricTexture(quadr, Gl.GL_TRUE);
            Gl.glEnable(Gl.GL_TEXTURE_2D);
            Gl.glBindTexture(Gl.GL_TEXTURE_2D, texture);
            Glu.gluSphere(quadr, radius, slices, stacks);
            Glu.gluDeleteQuadric(quadr);
            Gl.glDisable(Gl.GL_TEXTURE_2D);
        }

        void DrawCylinder(float radius, float height, int slices, int stacks, float[] color, float[] shiness)
        {
            setGlColor(color, shiness);
            Glut.glutSolidCylinder(radius, height, slices, stacks);
        }

        void DrawCylinder(float baseRadius, float topRadius, float height, int slices, int stacks, uint texture)
        {
            Glu.GLUquadric quadr = Glu.gluNewQuadric();
            Glu.gluQuadricTexture(quadr, Gl.GL_TRUE);
            Gl.glEnable(Gl.GL_TEXTURE_2D);
            Gl.glBindTexture(Gl.GL_TEXTURE_2D, texture);
            Glu.gluCylinder(quadr, baseRadius, topRadius, height, slices, stacks);
            Glu.gluDeleteQuadric(quadr);
            Gl.glDisable(Gl.GL_TEXTURE_2D);
        }

        void DrawCone(float baseRadius, float height, int slices, int stacks, float[] color, float[] shiness)
        {
            setGlColor(color, shiness);
            Glut.glutSolidCone(baseRadius, height, slices, stacks);
        }

        void DrawCone(float baseRadius, float height, int slices, int stacks, uint texture)
        {
            Glu.GLUquadric quadr = Glu.gluNewQuadric();
            Glu.gluQuadricTexture(quadr, Gl.GL_TRUE);
            Gl.glEnable(Gl.GL_TEXTURE_2D);
            Gl.glBindTexture(Gl.GL_TEXTURE_2D, texture);
            Glu.gluCylinder(quadr, baseRadius, 0.1f, height, slices, stacks);
            Glu.gluDeleteQuadric(quadr);
            Gl.glDisable(Gl.GL_TEXTURE_2D);
        }

        void DrawGrid(Vector3 pos, float cubeSize, int rows, int columns)
        {
            Vector3 end = pos + new Vector3(columns * cubeSize, 0, rows * cubeSize);
            for (float x = pos.X; x < end.X; x += cubeSize)
            {
                for (float z = pos.Z; z < end.Z; z += cubeSize)
                {
                    Gl.glPushMatrix();
                    Gl.glTranslatef(x, 0, z);
                    Glut.glutWireCube(cubeSize);
                    Gl.glPopMatrix();
                }
            }
        }

        void DrawGrid(Vector3 pos, float cubeSize, int rows, int columns, float[] color, float[] shiness)
        {
            setGlColor(color, shiness);
            Vector3 end = pos + new Vector3(columns * cubeSize, 0, rows * cubeSize);
            for (float x = pos.X; x < end.X; x += cubeSize)
            {
                for (float z = pos.Z; z < end.Z; z += cubeSize)
                {
                    Gl.glPushMatrix();
                    Gl.glTranslatef(x, 0, z);
                    Glut.glutSolidCube(cubeSize);
                    Gl.glPopMatrix();
                }
            }
        }

        void DrawApple(Vector3 pos, float diametr)
        {
            Gl.glPushMatrix();
            Gl.glTranslatef(pos.X, pos.Y, pos.Z);
            Glut.glutWireSphere(diametr / 2, 16, 16);

            Gl.glTranslatef(0, diametr, 0);
            Gl.glRotatef(90, 1, 0, 0);
            Glut.glutWireCylinder(diametr * 0.05, diametr * 0.7, 8, 8);

            Gl.glTranslatef(0, -diametr * 0.5f, diametr * 0.3f);
            Gl.glRotatef(30, 0, 1, 0);
            Glut.glutWireCylinder(diametr * 0.7, diametr * 0.1, 4, 1);
            Gl.glPopMatrix();
        }

        void DrawApple(Vector3 pos, float diametr, GlMaterial body, GlMaterial branch, GlMaterial leaf)
        {
            Gl.glPushMatrix();
            Gl.glTranslatef(pos.X, pos.Y, pos.Z);
            if (body.useTexture)
                DrawSphere(diametr / 2, 32, 32, body.texture);
            else
                DrawSphere(diametr / 2, 32, 32, body.color, body.shiness);
            
            Gl.glTranslatef(0, appleDiametr, 0);
            Gl.glRotatef(90, 1, 0, 0);
            if (branch.useTexture)
                DrawCylinder(diametr * 0.05f, diametr * 0.03f, diametr * 0.7f, 8, 8, branch.texture);
            else
                DrawCylinder(diametr * 0.05f, diametr * 0.7f, 8, 8, branch.color, branch.shiness);

            if (leaf.useTexture)
            {
                Gl.glTranslatef(diametr * 0.1f, -diametr * 0.1f, diametr * 0.3f);
                Gl.glRotatef(30, 0, 1, 0);
                Gl.glEnable(Gl.GL_TEXTURE_2D);
                Gl.glBindTexture(Gl.GL_TEXTURE_2D, leaf.texture);
                Gl.glBegin(Gl.GL_POLYGON);
                Gl.glVertex3f(diametr * 0.7f, diametr * 0.7f, 0);
                Gl.glTexCoord2f(0.0f, 0.0f);
                Gl.glVertex3f(diametr * 0.7f, diametr * 0.4f, 0);
                Gl.glTexCoord2f(0.7f, 0.0f);
                Gl.glVertex3f(diametr * -0.2f, diametr * 0.0f, 0);
                Gl.glTexCoord2f(1.0f, 1.0f);
                Gl.glVertex3d(diametr * -0.1f, diametr * 0.4f, 0);
                Gl.glTexCoord2f(0.0f, 1.0f);
                Gl.glEnd();
                Gl.glDisable(Gl.GL_TEXTURE_2D);
            }
            else
            {
                Gl.glTranslatef(0, -diametr * 0.5f, diametr * 0.3f);
                DrawCylinder(diametr * 0.5f, diametr * 0.1f, 4, 1, leaf.color, leaf.shiness);
            }
            Gl.glPopMatrix();
        }

        void DrawSnake(Vector3 pos, List<Vector3> snake, float elemDiametr)
        {
            Gl.glPushMatrix();
            Gl.glTranslatef(pos.X, pos.Y, pos.Z);
            for (int i = 0; i < snake.Count - 1; i++)
            {
                Gl.glPushMatrix();
                Gl.glTranslatef(snake[i].X, snake[i].Y, snake[i].Z);
                Glut.glutWireSphere(elemDiametr / 2, 32, 32);
                Gl.glPopMatrix();
            }

            Gl.glPushMatrix();
            int last = snake.Count - 1;
            Vector3 tailDirection = snake[last - 1] - snake[last];
            Rotation tailRotation = SnakeTailRotation(tailDirection);
            Gl.glTranslatef(snake[last].X, snake[last].Y, snake[last].Z);
            Gl.glRotatef(tailRotation.angle, tailRotation.vector.X, tailRotation.vector.Y, tailRotation.vector.Z);
            Glut.glutWireCone(elemDiametr / 2, elemDiametr, 32, 32);
            Gl.glPopMatrix();
            Gl.glPopMatrix();
        }

        void DrawSnake(Vector3 pos, List<Vector3> snake, float elemDiametr, GlMaterial head, GlMaterial body, GlMaterial tail)
        {
            Gl.glPushMatrix();
            Gl.glTranslatef(pos.X, pos.Y, pos.Z);
            Gl.glPushMatrix();
            Rotation headRotation = SnakeHeadRotation(Dir);
            Gl.glTranslatef(snake[0].X, snake[0].Y, snake[0].Z);
            Gl.glRotatef(headRotation.angle, headRotation.vector.X, headRotation.vector.Y, headRotation.vector.Z);
            Gl.glRotatef(-90, 1, 0, 0);
            if (head.useTexture)
                DrawSphere(elemDiametr / 2, 32, 32, head.texture);
            else
                DrawSphere(elemDiametr / 2, 32, 32, head.color, head.shiness);
            Gl.glPopMatrix();

            Gl.glPushMatrix();
            if (body.useTexture)
            {
                Glu.GLUquadric quadr = Glu.gluNewQuadric();
                Glu.gluQuadricTexture(quadr, Gl.GL_TRUE);
                Gl.glEnable(Gl.GL_TEXTURE_2D);
                Gl.glBindTexture(Gl.GL_TEXTURE_2D, body.texture);
                for (int i = 1; i < snake.Count - 1; i++)
                {
                    Gl.glPushMatrix();
                    Gl.glTranslatef(snake[i].X, snake[i].Y, snake[i].Z);
                    Glu.gluSphere(quadr, elemDiametr / 2, 32, 32);
                    Gl.glPopMatrix();
                }
                Glu.gluDeleteQuadric(quadr);
                Gl.glDisable(Gl.GL_TEXTURE_2D);
            }
            else
            {
                setGlColor(body.color, body.shiness);
                for (int i = 1; i < snake.Count - 1; i++)
                {
                    Gl.glPushMatrix();
                    Gl.glTranslatef(snake[i].X, snake[i].Y, snake[i].Z);
                    Glut.glutSolidSphere(elemDiametr / 2, 32, 32);
                    Gl.glPopMatrix();
                }
            }
            Gl.glPopMatrix();

            Gl.glPushMatrix();
            int last = snake.Count - 1;
            Vector3 tailDirection = snake[last - 1] - snake[last];
            Rotation tailRotation = SnakeTailRotation(tailDirection);
            Gl.glTranslatef(snake[last].X, snake[last].Y, snake[last].Z);
            Gl.glRotatef(tailRotation.angle, tailRotation.vector.X, tailRotation.vector.Y, tailRotation.vector.Z);
            if (tail.useTexture)
                DrawCone(elemDiametr / 2, elemDiametr, 32, 32, tail.texture);
            else
                DrawCone(elemDiametr / 2, elemDiametr, 32, 32, tail.color, tail.shiness);
            Gl.glPopMatrix();
            Gl.glPopMatrix();
        }

        void DrawScore()
        {
            Gl.glPushMatrix();
            setGlColor(new float[] { 0, 0, 0, 1 }, new float[] { 30 });
            Gl.glRasterPos3f(0, appleDiametr, -appleDiametr);
            foreach (var c in $"Score:{snake.Count - 2}")
                Glut.glutBitmapCharacter(Glut.GLUT_BITMAP_HELVETICA_12, c);
            Gl.glPopMatrix();
        }

        void DrawWireScene()
        {
            Vector3 gridOffset = new Vector3(0, appleDiametr, 0);
            DrawGrid(Vector3.Zero, appleDiametr, gridRows, gridColumns);
            foreach (var pos in apples)
                DrawApple(pos + gridOffset, appleDiametr);
            DrawSnake(gridOffset, snake, appleDiametr);
        }

        void DrawScene()
        {
            Vector3 gridOffset = new Vector3(0, appleDiametr, 0);
            DrawGrid(Vector3.Zero, appleDiametr, gridRows, gridColumns, gridMaterial.color, gridMaterial.shiness);
            foreach (var pos in apples)
                DrawApple(pos + gridOffset, appleDiametr, appleBodyMaterial, appleBranchMaterial, appleLeafMaterial);
            DrawSnake(gridOffset, snake, appleDiametr, snakeHeadMaterial, snakeBodyMaterial, snakeTailMaterial);
        }

        Vector3 CreateApple()
        {
            float x = random.Next(gridColumns);
            float z = random.Next(gridRows);
            return new Vector3(x, 0, z) * appleDiametr;
        }

        Rotation SnakeTailRotation(Vector3 tailDirection)
        {
            if (tailDirection.X > 0)
                return new Rotation { angle = -90, vector = Vector3.UnitY };
            else if (tailDirection.X < 0)
                return new Rotation { angle = 90, vector = Vector3.UnitY };
            else if (tailDirection.Z > 0)
                return new Rotation { angle = 180, vector = Vector3.UnitY };
            else
                return new Rotation { angle = 0, vector = Vector3.UnitY };
        }

        Rotation SnakeHeadRotation(Direction headDirection)
        {
            switch (headDirection)
            {
                case Direction.RIGHT:
                    return new Rotation { angle = 90, vector = Vector3.UnitY };
                case Direction.LEFT:
                    return new Rotation { angle = -90, vector = Vector3.UnitY };
                case Direction.UP:
                    return new Rotation { angle = 180, vector = Vector3.UnitY };
                default:
                    return new Rotation { angle = 0, vector = Vector3.UnitY };
            }
        }

        void MoveSnake()
        {
            if (dir == Direction.NONE) return;

            for (int i = snake.Count - 1; i > 0; i--)
                snake[i] = snake[i - 1];

            if (Dir == Direction.UP) snake[0] -= Vector3.UnitZ * appleDiametr;
            if (Dir == Direction.DOWN) snake[0] += Vector3.UnitZ * appleDiametr;
            if (Dir == Direction.LEFT) snake[0] -= Vector3.UnitX * appleDiametr;
            if (Dir == Direction.RIGHT) snake[0] += Vector3.UnitX * appleDiametr;

            float boundX = (gridColumns - 1) * appleDiametr;
            float boundZ = (gridRows - 1) * appleDiametr;
            if (snake[0].X > boundX)
                snake[0] = new Vector3(0, snake[0].Y, snake[0].Z);
            else if (snake[0].X < 0)
                snake[0] = new Vector3(boundX, snake[0].Y, snake[0].Z);
            else if (snake[0].Z > boundZ)
                snake[0] = new Vector3(snake[0].X, snake[0].Y, 0);
            else if (snake[0].Z < 0)
                snake[0] = new Vector3(snake[0].X, snake[0].Y, boundZ);
        }

        void SnakeTryEatApple()
        {
            for (int i = 0; i < apples.Count; i++)
            {
                if (snake[0].X == apples[i].X && snake[0].Z == apples[i].Z)
                {
                    snake.Add(Vector3.Zero);
                    apples[i] = CreateApple();
                }
            }
        }

        void HandleSnakeCollision()
        {
            for (int i = 1; i < snake.Count; i++)
                if (snake[0] == snake[i])
                    snake.RemoveRange(i, snake.Count - i);
        }

        private void Lab6Form_Load(object sender, EventArgs e)
        {
            KeyPreview = true;
            Focus();
            Glut.glutInit();
            Glut.glutInitDisplayMode(Glut.GLUT_RGB | Glut.GLUT_DOUBLE);
            Il.ilInit();
            Il.ilEnable(Il.IL_ORIGIN_SET);

            Gl.glClearColor(255, 255, 255, 1);
            Gl.glViewport(0, 0, AnT.Width, AnT.Height);
            Gl.glMatrixMode(Gl.GL_PROJECTION);
            Gl.glLoadIdentity();
            Glu.gluPerspective(45, AnT.Width / AnT.Height, 0.1, 200);
            Gl.glMatrixMode(Gl.GL_MODELVIEW);
            Gl.glLoadIdentity();

            Gl.glEnable(Gl.GL_DEPTH_TEST);
            Gl.glEnable(Gl.GL_LIGHTING);
            Gl.glEnable(Gl.GL_LIGHT0);

            rotationComboBox.SelectedIndex = 0;
            wireMode = wireCheckBox.Checked;
            cam = new Camera
            {
                pos = new Vector3(xTrackBar.Value, yTrackBar.Value, zTrackBar.Value),
                rotation = new Rotation { angle = angleTrackBar.Value, vector = Vector3.UnitX },
                zoom = zoomTrackBar.Value
            };
            gridRows = (int)rowsUpDown.Value;
            gridColumns = (int)columnsUpDown.Value;
            appleDiametr = (int)diametrUpDown.Value;
            apples = new List<Vector3>();
            random = new Random();
            for (int i = 0; i < (int)appleCountUpDown.Value; i++)
                apples.Add(CreateApple());
            dir = Direction.NONE;
            snake = new List<Vector3>();
            snake.Add(new Vector3(2, 0, 1) * appleDiametr);
            snake.Add(new Vector3(1, 0, 1) * appleDiametr);
            gridMaterial = new GlMaterial(Color.Blue, 30);
            appleBodyMaterial = new GlMaterial(Color.Red, 30);
            appleBranchMaterial = new GlMaterial(Color.Brown, 30);
            appleLeafMaterial = new GlMaterial(Color.GreenYellow, 30);
            snakeHeadMaterial = new GlMaterial(Color.White, 30);
            snakeBodyMaterial = new GlMaterial(Color.Blue, 30);
            snakeTailMaterial = new GlMaterial(Color.Red, 30);

            renderTimer.Start();
        }

        private void Lab6Form_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.W) Dir = Direction.UP;
            else if (e.KeyCode == Keys.S) Dir = Direction.DOWN;
            else if (e.KeyCode == Keys.A) Dir = Direction.LEFT;
            else if (e.KeyCode == Keys.D) Dir = Direction.RIGHT;
            else if (e.KeyCode == Keys.Space) Dir = Direction.NONE;
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
            MoveSnake();
            HandleSnakeCollision();
            if (wireMode) DrawWireScene();
            else DrawScene();
            DrawScore();
            SnakeTryEatApple();
            Gl.glPopMatrix();

            Gl.glFlush();
            AnT.Invalidate();
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

        private void wireCheckBox_CheckedChanged(object sender, EventArgs e) => 
            wireMode = wireCheckBox.Checked;

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

        private void nUpDown_ValueChanged(object sender, EventArgs e) => 
            gridRows = (int)rowsUpDown.Value;

        private void mUpDown_ValueChanged(object sender, EventArgs e) =>
            gridColumns = (int)columnsUpDown.Value;

        private void dUpDown_ValueChanged(object sender, EventArgs e) =>
            appleDiametr = (int)diametrUpDown.Value;

        private void upBtn_Click(object sender, EventArgs e) =>
            Dir = Direction.UP;

        private void downBtn_Click(object sender, EventArgs e) =>
            Dir = Direction.DOWN;

        private void leftBtn_Click(object sender, EventArgs e) =>
            Dir = Direction.LEFT;

        private void rightBtn_Click(object sender, EventArgs e) =>
            Dir = Direction.RIGHT;

        private void stopBtn_Click(object sender, EventArgs e) =>
            Dir = Direction.NONE;

        private void appleCountUpDown_ValueChanged(object sender, EventArgs e)
        {
            int count = (int)appleCountUpDown.Value;
            for (int i = apples.Count; i < count; i++)
                apples.Add(CreateApple());
            for (int i = apples.Count; i > count; i--)
                apples.RemoveAt(i - 1);
        }

        private void gridColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (colorDialog.ShowDialog() == DialogResult.OK)
                gridMaterial = new GlMaterial(colorDialog.Color, 30);
        }

        private void appleBodyColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (colorDialog.ShowDialog() == DialogResult.OK)
                appleBodyMaterial = new GlMaterial(colorDialog.Color, 30);
        }

        private void appleBodyTextureToolStripMenuItem_Click(object sender, EventArgs e) =>
            appleBodyMaterial = loadGlTexure(appleBodyMaterial);

        private void appleBranchColorToolStripMenuItem4_Click(object sender, EventArgs e)
        {
            if (colorDialog.ShowDialog() == DialogResult.OK)
                appleBranchMaterial = new GlMaterial(colorDialog.Color, 30);
        }

        private void appleBranchTextureToolStripMenuItem4_Click(object sender, EventArgs e) =>
            appleBranchMaterial = loadGlTexure(appleLeafMaterial);

        private void appleLeafColorToolStripMenuItem5_Click(object sender, EventArgs e)
        {
            if (colorDialog.ShowDialog() == DialogResult.OK)
                appleLeafMaterial = new GlMaterial(colorDialog.Color, 30);
        }

        private void appleLeafTextureToolStripMenuItem5_Click(object sender, EventArgs e) =>
            appleLeafMaterial = loadGlTexure(appleLeafMaterial);

        private void snakeHeadColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (colorDialog.ShowDialog() == DialogResult.OK)
                snakeHeadMaterial = new GlMaterial(colorDialog.Color, 30);
        }

        private void snakeBodyColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (colorDialog.ShowDialog() == DialogResult.OK)
                snakeBodyMaterial = new GlMaterial(colorDialog.Color, 30);
        }

        private void snakeTailColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (colorDialog.ShowDialog() == DialogResult.OK)
                snakeTailMaterial = new GlMaterial(colorDialog.Color, 30);
        }

        private void snakeHeadTextureToolStripMenuItem_Click(object sender, EventArgs e) =>
            snakeHeadMaterial = loadGlTexure(snakeHeadMaterial);

        private void snakeBodyTextureToolStripMenuItem_Click(object sender, EventArgs e) =>
            snakeBodyMaterial = loadGlTexure(snakeBodyMaterial);

        private void snakeTailTextureToolStripMenuItem_Click(object sender, EventArgs e) =>
            snakeTailMaterial = loadGlTexure(snakeTailMaterial);

        GlMaterial loadGlTexure(GlMaterial current)
        {
            GlMaterial material = current;
            // открываем окно выбора файла
            DialogResult res = openFileDialog.ShowDialog();
            // Если файл не выбран выходим.
            if (res != DialogResult.OK) return material;

            // создаем изображение с индификатором imageId
            Il.ilGenImages(1, out int imageId);
            // делаем изображение текущим
            Il.ilBindImage(imageId);
            // адрес изображения полученный с помощью окна выбра файла
            string url = openFileDialog.FileName;
            // Если удалось загрузить изображение.
            if (Il.ilLoadImage(url))
            {
                // сохраняем размеры изображения
                int width = Il.ilGetInteger(Il.IL_IMAGE_WIDTH);
                int height = Il.ilGetInteger(Il.IL_IMAGE_HEIGHT);
                // определяем число бит на пиксель
                int bitspp = Il.ilGetInteger(Il.IL_IMAGE_BITS_PER_PIXEL);
                switch (bitspp) // в зависимости оп полученного результата
                {
                    // создаем текстуру используя режим GL_RGB или GL_RGBA
                    case 24:
                        material = new GlMaterial(MakeGlTexture(Gl.GL_RGB, Il.ilGetData(), width, height));
                        break;
                    case 32:
                        material = new GlMaterial(MakeGlTexture(Gl.GL_RGBA, Il.ilGetData(), width, height));
                        break;
                }
            }
            // очищаем память
            Il.ilDeleteImages(1, ref imageId);
            return material;
        }

        private uint MakeGlTexture(int Format, IntPtr pixels, int w, int h)
        {
            // генерируем текстурный объект
            Gl.glGenTextures(1, out uint texObject);

            // устанавливаем режим упаковки пикселей
            Gl.glPixelStorei(Gl.GL_UNPACK_ALIGNMENT, 1);

            // создаем привязку к только что созданной текстуре
            Gl.glBindTexture(Gl.GL_TEXTURE_2D, texObject);

            // устанавливаем режим фильтрации и повторения текстуры
            Gl.glTexParameteri(Gl.GL_TEXTURE_2D, Gl.GL_TEXTURE_WRAP_S, Gl.GL_REPEAT);
            Gl.glTexParameteri(Gl.GL_TEXTURE_2D, Gl.GL_TEXTURE_WRAP_T, Gl.GL_REPEAT);
            Gl.glTexParameteri(Gl.GL_TEXTURE_2D, Gl.GL_TEXTURE_MAG_FILTER, Gl.GL_LINEAR);
            Gl.glTexParameteri(Gl.GL_TEXTURE_2D, Gl.GL_TEXTURE_MIN_FILTER, Gl.GL_LINEAR);
            Gl.glTexEnvf(Gl.GL_TEXTURE_ENV, Gl.GL_TEXTURE_ENV_MODE, Gl.GL_REPLACE);

            // создаем RGB или RGBA текстуру
            switch (Format)
            {
                case Gl.GL_RGB:
                    Gl.glTexImage2D(Gl.GL_TEXTURE_2D, 0, Gl.GL_RGB, w, h, 0, Gl.GL_RGB, Gl.GL_UNSIGNED_BYTE, pixels);
                    break;
                case Gl.GL_RGBA:
                    Gl.glTexImage2D(Gl.GL_TEXTURE_2D, 0, Gl.GL_RGBA, w, h, 0, Gl.GL_RGBA, Gl.GL_UNSIGNED_BYTE, pixels);
                    break;
            }

            // возвращаем индетефекатор текстурного объекта
            return texObject;
        }
    }
}
