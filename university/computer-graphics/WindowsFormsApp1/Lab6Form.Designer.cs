namespace WindowsFormsApp1
{
    partial class Lab6Form
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.zoomLabel = new System.Windows.Forms.Label();
            this.zoomTrackBar = new System.Windows.Forms.TrackBar();
            this.angleLabel = new System.Windows.Forms.Label();
            this.angleTrackBar = new System.Windows.Forms.TrackBar();
            this.zLabel = new System.Windows.Forms.Label();
            this.zTrackBar = new System.Windows.Forms.TrackBar();
            this.yLabel = new System.Windows.Forms.Label();
            this.yTrackBar = new System.Windows.Forms.TrackBar();
            this.xLabel = new System.Windows.Forms.Label();
            this.xTrackBar = new System.Windows.Forms.TrackBar();
            this.wireCheckBox = new System.Windows.Forms.CheckBox();
            this.label1 = new System.Windows.Forms.Label();
            this.rotationComboBox = new System.Windows.Forms.ComboBox();
            this.AnT = new Tao.Platform.Windows.SimpleOpenGlControl();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.appleCountUpDown = new System.Windows.Forms.NumericUpDown();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.stopBtn = new System.Windows.Forms.Button();
            this.downBtn = new System.Windows.Forms.Button();
            this.leftBtn = new System.Windows.Forms.Button();
            this.rightBtn = new System.Windows.Forms.Button();
            this.upBtn = new System.Windows.Forms.Button();
            this.diametrUpDown = new System.Windows.Forms.NumericUpDown();
            this.label11 = new System.Windows.Forms.Label();
            this.columnsUpDown = new System.Windows.Forms.NumericUpDown();
            this.label10 = new System.Windows.Forms.Label();
            this.rowsUpDown = new System.Windows.Forms.NumericUpDown();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.renderTimer = new System.Windows.Forms.Timer(this.components);
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.objToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gridToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gridColorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.appleToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bodyToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.appleBodyColorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.appleBodyTextureToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.branchToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.appleBranchColorToolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
            this.appleBranchTextureToolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
            this.leafToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.appleLeafColorToolStripMenuItem5 = new System.Windows.Forms.ToolStripMenuItem();
            this.appleLeafTextureToolStripMenuItem5 = new System.Windows.Forms.ToolStripMenuItem();
            this.snakeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.headToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.snakeHeadColorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.snakeHeadTextureToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bodyToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.snakeBodyColorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.snakeBodyTextureToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tailToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.snakeTailColorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.snakeTailTextureToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.openFileDialog = new System.Windows.Forms.OpenFileDialog();
            this.colorDialog = new System.Windows.Forms.ColorDialog();
            ((System.ComponentModel.ISupportInitialize)(this.zoomTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.angleTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.zTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.yTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xTrackBar)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.appleCountUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.diametrUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.columnsUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rowsUpDown)).BeginInit();
            this.menuStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // zoomLabel
            // 
            this.zoomLabel.AutoSize = true;
            this.zoomLabel.Location = new System.Drawing.Point(668, 423);
            this.zoomLabel.Name = "zoomLabel";
            this.zoomLabel.Size = new System.Drawing.Size(52, 20);
            this.zoomLabel.TabIndex = 31;
            this.zoomLabel.Text = "zoom:";
            // 
            // zoomTrackBar
            // 
            this.zoomTrackBar.Location = new System.Drawing.Point(668, 446);
            this.zoomTrackBar.Maximum = 5;
            this.zoomTrackBar.Minimum = -5;
            this.zoomTrackBar.Name = "zoomTrackBar";
            this.zoomTrackBar.Size = new System.Drawing.Size(298, 69);
            this.zoomTrackBar.TabIndex = 30;
            this.zoomTrackBar.Value = 1;
            this.zoomTrackBar.Scroll += new System.EventHandler(this.zoomTrackBar_Scroll);
            // 
            // angleLabel
            // 
            this.angleLabel.AutoSize = true;
            this.angleLabel.Location = new System.Drawing.Point(672, 348);
            this.angleLabel.Name = "angleLabel";
            this.angleLabel.Size = new System.Drawing.Size(52, 20);
            this.angleLabel.TabIndex = 29;
            this.angleLabel.Text = "angle:";
            // 
            // angleTrackBar
            // 
            this.angleTrackBar.Location = new System.Drawing.Point(672, 371);
            this.angleTrackBar.Maximum = 360;
            this.angleTrackBar.Minimum = -360;
            this.angleTrackBar.Name = "angleTrackBar";
            this.angleTrackBar.Size = new System.Drawing.Size(298, 69);
            this.angleTrackBar.TabIndex = 28;
            this.angleTrackBar.Value = 30;
            this.angleTrackBar.Scroll += new System.EventHandler(this.angleTrackBar_Scroll);
            // 
            // zLabel
            // 
            this.zLabel.AutoSize = true;
            this.zLabel.Location = new System.Drawing.Point(668, 273);
            this.zLabel.Name = "zLabel";
            this.zLabel.Size = new System.Drawing.Size(17, 20);
            this.zLabel.TabIndex = 27;
            this.zLabel.Text = "z";
            // 
            // zTrackBar
            // 
            this.zTrackBar.Location = new System.Drawing.Point(668, 296);
            this.zTrackBar.Maximum = 50;
            this.zTrackBar.Minimum = -100;
            this.zTrackBar.Name = "zTrackBar";
            this.zTrackBar.Size = new System.Drawing.Size(298, 69);
            this.zTrackBar.TabIndex = 26;
            this.zTrackBar.Value = -70;
            this.zTrackBar.Scroll += new System.EventHandler(this.zTrackBar_Scroll);
            // 
            // yLabel
            // 
            this.yLabel.AutoSize = true;
            this.yLabel.Location = new System.Drawing.Point(668, 198);
            this.yLabel.Name = "yLabel";
            this.yLabel.Size = new System.Drawing.Size(16, 20);
            this.yLabel.TabIndex = 25;
            this.yLabel.Text = "y";
            // 
            // yTrackBar
            // 
            this.yTrackBar.Location = new System.Drawing.Point(668, 221);
            this.yTrackBar.Maximum = 100;
            this.yTrackBar.Minimum = -100;
            this.yTrackBar.Name = "yTrackBar";
            this.yTrackBar.Size = new System.Drawing.Size(298, 69);
            this.yTrackBar.TabIndex = 24;
            this.yTrackBar.Scroll += new System.EventHandler(this.yTrackBar_Scroll);
            // 
            // xLabel
            // 
            this.xLabel.AutoSize = true;
            this.xLabel.Location = new System.Drawing.Point(668, 123);
            this.xLabel.Name = "xLabel";
            this.xLabel.Size = new System.Drawing.Size(16, 20);
            this.xLabel.TabIndex = 23;
            this.xLabel.Text = "x";
            // 
            // xTrackBar
            // 
            this.xTrackBar.Location = new System.Drawing.Point(668, 146);
            this.xTrackBar.Maximum = 100;
            this.xTrackBar.Minimum = -100;
            this.xTrackBar.Name = "xTrackBar";
            this.xTrackBar.Size = new System.Drawing.Size(298, 69);
            this.xTrackBar.TabIndex = 22;
            this.xTrackBar.Value = -15;
            this.xTrackBar.Scroll += new System.EventHandler(this.xTrackBar_Scroll);
            // 
            // wireCheckBox
            // 
            this.wireCheckBox.AutoSize = true;
            this.wireCheckBox.Location = new System.Drawing.Point(668, 96);
            this.wireCheckBox.Name = "wireCheckBox";
            this.wireCheckBox.Size = new System.Drawing.Size(81, 24);
            this.wireCheckBox.TabIndex = 21;
            this.wireCheckBox.Text = "Сетка";
            this.wireCheckBox.UseVisualStyleBackColor = true;
            this.wireCheckBox.CheckedChanged += new System.EventHandler(this.wireCheckBox_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(664, 39);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(143, 20);
            this.label1.TabIndex = 18;
            this.label1.Text = "Вращение по оси:";
            // 
            // rotationComboBox
            // 
            this.rotationComboBox.FormattingEnabled = true;
            this.rotationComboBox.Items.AddRange(new object[] {
            "x",
            "y",
            "z"});
            this.rotationComboBox.Location = new System.Drawing.Point(668, 62);
            this.rotationComboBox.Name = "rotationComboBox";
            this.rotationComboBox.Size = new System.Drawing.Size(298, 28);
            this.rotationComboBox.TabIndex = 17;
            this.rotationComboBox.SelectedIndexChanged += new System.EventHandler(this.rotationComboBox_SelectedIndexChanged);
            // 
            // AnT
            // 
            this.AnT.AccumBits = ((byte)(0));
            this.AnT.AutoCheckErrors = false;
            this.AnT.AutoFinish = false;
            this.AnT.AutoMakeCurrent = true;
            this.AnT.AutoSwapBuffers = true;
            this.AnT.BackColor = System.Drawing.Color.Black;
            this.AnT.ColorBits = ((byte)(32));
            this.AnT.DepthBits = ((byte)(16));
            this.AnT.Location = new System.Drawing.Point(12, 42);
            this.AnT.Name = "AnT";
            this.AnT.Size = new System.Drawing.Size(650, 520);
            this.AnT.StencilBits = ((byte)(0));
            this.AnT.TabIndex = 16;
            // 
            // panel1
            // 
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.appleCountUpDown);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.stopBtn);
            this.panel1.Controls.Add(this.downBtn);
            this.panel1.Controls.Add(this.leftBtn);
            this.panel1.Controls.Add(this.rightBtn);
            this.panel1.Controls.Add(this.upBtn);
            this.panel1.Controls.Add(this.diametrUpDown);
            this.panel1.Controls.Add(this.label11);
            this.panel1.Controls.Add(this.columnsUpDown);
            this.panel1.Controls.Add(this.label10);
            this.panel1.Controls.Add(this.rowsUpDown);
            this.panel1.Controls.Add(this.label9);
            this.panel1.Controls.Add(this.label8);
            this.panel1.Location = new System.Drawing.Point(1017, 46);
            this.panel1.Margin = new System.Windows.Forms.Padding(50, 10, 10, 10);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(242, 509);
            this.panel1.TabIndex = 32;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 204);
            this.label2.Margin = new System.Windows.Forms.Padding(10);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(100, 20);
            this.label2.TabIndex = 26;
            this.label2.Text = "Количество";
            // 
            // appleCountUpDown
            // 
            this.appleCountUpDown.Location = new System.Drawing.Point(130, 202);
            this.appleCountUpDown.Margin = new System.Windows.Forms.Padding(10);
            this.appleCountUpDown.Name = "appleCountUpDown";
            this.appleCountUpDown.Size = new System.Drawing.Size(100, 26);
            this.appleCountUpDown.TabIndex = 25;
            this.appleCountUpDown.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.appleCountUpDown.ValueChanged += new System.EventHandler(this.appleCountUpDown_ValueChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(90, 301);
            this.label4.Margin = new System.Windows.Forms.Padding(5);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(66, 20);
            this.label4.TabIndex = 24;
            this.label4.Text = "Змейка";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(90, 121);
            this.label3.Margin = new System.Windows.Forms.Padding(5);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(66, 20);
            this.label3.TabIndex = 23;
            this.label3.Text = "Яблоко";
            // 
            // stopBtn
            // 
            this.stopBtn.Location = new System.Drawing.Point(86, 469);
            this.stopBtn.Margin = new System.Windows.Forms.Padding(10);
            this.stopBtn.Name = "stopBtn";
            this.stopBtn.Size = new System.Drawing.Size(70, 30);
            this.stopBtn.TabIndex = 11;
            this.stopBtn.Text = "Стоп";
            this.stopBtn.UseVisualStyleBackColor = true;
            this.stopBtn.Click += new System.EventHandler(this.stopBtn_Click);
            // 
            // downBtn
            // 
            this.downBtn.Location = new System.Drawing.Point(82, 419);
            this.downBtn.Margin = new System.Windows.Forms.Padding(10);
            this.downBtn.Name = "downBtn";
            this.downBtn.Size = new System.Drawing.Size(80, 30);
            this.downBtn.TabIndex = 10;
            this.downBtn.Text = "Вниз";
            this.downBtn.UseVisualStyleBackColor = true;
            this.downBtn.Click += new System.EventHandler(this.downBtn_Click);
            // 
            // leftBtn
            // 
            this.leftBtn.Location = new System.Drawing.Point(30, 379);
            this.leftBtn.Margin = new System.Windows.Forms.Padding(30, 0, 10, 0);
            this.leftBtn.Name = "leftBtn";
            this.leftBtn.Size = new System.Drawing.Size(80, 30);
            this.leftBtn.TabIndex = 9;
            this.leftBtn.Text = "Влево";
            this.leftBtn.UseVisualStyleBackColor = true;
            this.leftBtn.Click += new System.EventHandler(this.leftBtn_Click);
            // 
            // rightBtn
            // 
            this.rightBtn.Location = new System.Drawing.Point(130, 379);
            this.rightBtn.Margin = new System.Windows.Forms.Padding(10, 0, 30, 0);
            this.rightBtn.Name = "rightBtn";
            this.rightBtn.Size = new System.Drawing.Size(80, 30);
            this.rightBtn.TabIndex = 8;
            this.rightBtn.Text = "Вправо";
            this.rightBtn.UseVisualStyleBackColor = true;
            this.rightBtn.Click += new System.EventHandler(this.rightBtn_Click);
            // 
            // upBtn
            // 
            this.upBtn.Location = new System.Drawing.Point(82, 336);
            this.upBtn.Margin = new System.Windows.Forms.Padding(10);
            this.upBtn.Name = "upBtn";
            this.upBtn.Size = new System.Drawing.Size(80, 30);
            this.upBtn.TabIndex = 7;
            this.upBtn.Text = "Вверх";
            this.upBtn.UseVisualStyleBackColor = true;
            this.upBtn.Click += new System.EventHandler(this.upBtn_Click);
            // 
            // diametrUpDown
            // 
            this.diametrUpDown.Location = new System.Drawing.Point(130, 156);
            this.diametrUpDown.Margin = new System.Windows.Forms.Padding(10);
            this.diametrUpDown.Name = "diametrUpDown";
            this.diametrUpDown.Size = new System.Drawing.Size(100, 26);
            this.diametrUpDown.TabIndex = 6;
            this.diametrUpDown.Value = new decimal(new int[] {
            2,
            0,
            0,
            0});
            this.diametrUpDown.ValueChanged += new System.EventHandler(this.dUpDown_ValueChanged);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(10, 158);
            this.label11.Margin = new System.Windows.Forms.Padding(10);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(77, 20);
            this.label11.TabIndex = 5;
            this.label11.Text = "Диаметр";
            // 
            // columnsUpDown
            // 
            this.columnsUpDown.Location = new System.Drawing.Point(130, 80);
            this.columnsUpDown.Margin = new System.Windows.Forms.Padding(10);
            this.columnsUpDown.Name = "columnsUpDown";
            this.columnsUpDown.Size = new System.Drawing.Size(100, 26);
            this.columnsUpDown.TabIndex = 4;
            this.columnsUpDown.Value = new decimal(new int[] {
            16,
            0,
            0,
            0});
            this.columnsUpDown.ValueChanged += new System.EventHandler(this.mUpDown_ValueChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(10, 82);
            this.label10.Margin = new System.Windows.Forms.Padding(10);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(84, 20);
            this.label10.TabIndex = 3;
            this.label10.Text = "Столбцов";
            // 
            // rowsUpDown
            // 
            this.rowsUpDown.Location = new System.Drawing.Point(130, 40);
            this.rowsUpDown.Margin = new System.Windows.Forms.Padding(10);
            this.rowsUpDown.Name = "rowsUpDown";
            this.rowsUpDown.Size = new System.Drawing.Size(100, 26);
            this.rowsUpDown.TabIndex = 2;
            this.rowsUpDown.Value = new decimal(new int[] {
            16,
            0,
            0,
            0});
            this.rowsUpDown.ValueChanged += new System.EventHandler(this.nUpDown_ValueChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(10, 42);
            this.label9.Margin = new System.Windows.Forms.Padding(10);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(55, 20);
            this.label9.TabIndex = 1;
            this.label9.Text = "Строк";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(90, 5);
            this.label8.Margin = new System.Windows.Forms.Padding(5);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(49, 20);
            this.label8.TabIndex = 0;
            this.label8.Text = "Поле";
            // 
            // renderTimer
            // 
            this.renderTimer.Tick += new System.EventHandler(this.renderTimer_Tick);
            // 
            // menuStrip
            // 
            this.menuStrip.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Size = new System.Drawing.Size(1278, 33);
            this.menuStrip.TabIndex = 33;
            this.menuStrip.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.objToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(69, 29);
            this.fileToolStripMenuItem.Text = "Файл";
            // 
            // objToolStripMenuItem
            // 
            this.objToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.gridToolStripMenuItem,
            this.appleToolStripMenuItem,
            this.snakeToolStripMenuItem});
            this.objToolStripMenuItem.Name = "objToolStripMenuItem";
            this.objToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.objToolStripMenuItem.Text = "Объект";
            // 
            // gridToolStripMenuItem
            // 
            this.gridToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.gridColorToolStripMenuItem});
            this.gridToolStripMenuItem.Name = "gridToolStripMenuItem";
            this.gridToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.gridToolStripMenuItem.Text = "Поле";
            // 
            // gridColorToolStripMenuItem
            // 
            this.gridColorToolStripMenuItem.Name = "gridColorToolStripMenuItem";
            this.gridColorToolStripMenuItem.Size = new System.Drawing.Size(153, 34);
            this.gridColorToolStripMenuItem.Text = "Цвет";
            this.gridColorToolStripMenuItem.Click += new System.EventHandler(this.gridColorToolStripMenuItem_Click);
            // 
            // appleToolStripMenuItem
            // 
            this.appleToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bodyToolStripMenuItem,
            this.branchToolStripMenuItem,
            this.leafToolStripMenuItem});
            this.appleToolStripMenuItem.Name = "appleToolStripMenuItem";
            this.appleToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.appleToolStripMenuItem.Text = "Яблоко";
            // 
            // bodyToolStripMenuItem
            // 
            this.bodyToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.appleBodyColorToolStripMenuItem,
            this.appleBodyTextureToolStripMenuItem});
            this.bodyToolStripMenuItem.Name = "bodyToolStripMenuItem";
            this.bodyToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.bodyToolStripMenuItem.Text = "Тело";
            // 
            // appleBodyColorToolStripMenuItem
            // 
            this.appleBodyColorToolStripMenuItem.Name = "appleBodyColorToolStripMenuItem";
            this.appleBodyColorToolStripMenuItem.Size = new System.Drawing.Size(185, 34);
            this.appleBodyColorToolStripMenuItem.Text = "Цвет";
            this.appleBodyColorToolStripMenuItem.Click += new System.EventHandler(this.appleBodyColorToolStripMenuItem_Click);
            // 
            // appleBodyTextureToolStripMenuItem
            // 
            this.appleBodyTextureToolStripMenuItem.Name = "appleBodyTextureToolStripMenuItem";
            this.appleBodyTextureToolStripMenuItem.Size = new System.Drawing.Size(185, 34);
            this.appleBodyTextureToolStripMenuItem.Text = "Текстура";
            this.appleBodyTextureToolStripMenuItem.Click += new System.EventHandler(this.appleBodyTextureToolStripMenuItem_Click);
            // 
            // branchToolStripMenuItem
            // 
            this.branchToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.appleBranchColorToolStripMenuItem4,
            this.appleBranchTextureToolStripMenuItem4});
            this.branchToolStripMenuItem.Name = "branchToolStripMenuItem";
            this.branchToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.branchToolStripMenuItem.Text = "Ветка";
            // 
            // appleBranchColorToolStripMenuItem4
            // 
            this.appleBranchColorToolStripMenuItem4.Name = "appleBranchColorToolStripMenuItem4";
            this.appleBranchColorToolStripMenuItem4.Size = new System.Drawing.Size(185, 34);
            this.appleBranchColorToolStripMenuItem4.Text = "Цвет";
            this.appleBranchColorToolStripMenuItem4.Click += new System.EventHandler(this.appleBranchColorToolStripMenuItem4_Click);
            // 
            // appleBranchTextureToolStripMenuItem4
            // 
            this.appleBranchTextureToolStripMenuItem4.Name = "appleBranchTextureToolStripMenuItem4";
            this.appleBranchTextureToolStripMenuItem4.Size = new System.Drawing.Size(185, 34);
            this.appleBranchTextureToolStripMenuItem4.Text = "Текстура";
            this.appleBranchTextureToolStripMenuItem4.Click += new System.EventHandler(this.appleBranchTextureToolStripMenuItem4_Click);
            // 
            // leafToolStripMenuItem
            // 
            this.leafToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.appleLeafColorToolStripMenuItem5,
            this.appleLeafTextureToolStripMenuItem5});
            this.leafToolStripMenuItem.Name = "leafToolStripMenuItem";
            this.leafToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.leafToolStripMenuItem.Text = "Лист";
            // 
            // appleLeafColorToolStripMenuItem5
            // 
            this.appleLeafColorToolStripMenuItem5.Name = "appleLeafColorToolStripMenuItem5";
            this.appleLeafColorToolStripMenuItem5.Size = new System.Drawing.Size(185, 34);
            this.appleLeafColorToolStripMenuItem5.Text = "Цвет";
            this.appleLeafColorToolStripMenuItem5.Click += new System.EventHandler(this.appleLeafColorToolStripMenuItem5_Click);
            // 
            // appleLeafTextureToolStripMenuItem5
            // 
            this.appleLeafTextureToolStripMenuItem5.Name = "appleLeafTextureToolStripMenuItem5";
            this.appleLeafTextureToolStripMenuItem5.Size = new System.Drawing.Size(185, 34);
            this.appleLeafTextureToolStripMenuItem5.Text = "Текстура";
            this.appleLeafTextureToolStripMenuItem5.Click += new System.EventHandler(this.appleLeafTextureToolStripMenuItem5_Click);
            // 
            // snakeToolStripMenuItem
            // 
            this.snakeToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.headToolStripMenuItem,
            this.bodyToolStripMenuItem1,
            this.tailToolStripMenuItem});
            this.snakeToolStripMenuItem.Name = "snakeToolStripMenuItem";
            this.snakeToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.snakeToolStripMenuItem.Text = "Змейка";
            // 
            // headToolStripMenuItem
            // 
            this.headToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.snakeHeadColorToolStripMenuItem,
            this.snakeHeadTextureToolStripMenuItem});
            this.headToolStripMenuItem.Name = "headToolStripMenuItem";
            this.headToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.headToolStripMenuItem.Text = "Голова";
            // 
            // snakeHeadColorToolStripMenuItem
            // 
            this.snakeHeadColorToolStripMenuItem.Name = "snakeHeadColorToolStripMenuItem";
            this.snakeHeadColorToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.snakeHeadColorToolStripMenuItem.Text = "Цвет";
            this.snakeHeadColorToolStripMenuItem.Click += new System.EventHandler(this.snakeHeadColorToolStripMenuItem_Click);
            // 
            // snakeHeadTextureToolStripMenuItem
            // 
            this.snakeHeadTextureToolStripMenuItem.Name = "snakeHeadTextureToolStripMenuItem";
            this.snakeHeadTextureToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.snakeHeadTextureToolStripMenuItem.Text = "Текстура";
            this.snakeHeadTextureToolStripMenuItem.Click += new System.EventHandler(this.snakeHeadTextureToolStripMenuItem_Click);
            // 
            // bodyToolStripMenuItem1
            // 
            this.bodyToolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.snakeBodyColorToolStripMenuItem,
            this.snakeBodyTextureToolStripMenuItem});
            this.bodyToolStripMenuItem1.Name = "bodyToolStripMenuItem1";
            this.bodyToolStripMenuItem1.Size = new System.Drawing.Size(270, 34);
            this.bodyToolStripMenuItem1.Text = "Тело";
            // 
            // snakeBodyColorToolStripMenuItem
            // 
            this.snakeBodyColorToolStripMenuItem.Name = "snakeBodyColorToolStripMenuItem";
            this.snakeBodyColorToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.snakeBodyColorToolStripMenuItem.Text = "Цвет";
            this.snakeBodyColorToolStripMenuItem.Click += new System.EventHandler(this.snakeBodyColorToolStripMenuItem_Click);
            // 
            // snakeBodyTextureToolStripMenuItem
            // 
            this.snakeBodyTextureToolStripMenuItem.Name = "snakeBodyTextureToolStripMenuItem";
            this.snakeBodyTextureToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.snakeBodyTextureToolStripMenuItem.Text = "Текстура";
            this.snakeBodyTextureToolStripMenuItem.Click += new System.EventHandler(this.snakeBodyTextureToolStripMenuItem_Click);
            // 
            // tailToolStripMenuItem
            // 
            this.tailToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.snakeTailColorToolStripMenuItem,
            this.snakeTailTextureToolStripMenuItem});
            this.tailToolStripMenuItem.Name = "tailToolStripMenuItem";
            this.tailToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.tailToolStripMenuItem.Text = "Хвост";
            // 
            // snakeTailColorToolStripMenuItem
            // 
            this.snakeTailColorToolStripMenuItem.Name = "snakeTailColorToolStripMenuItem";
            this.snakeTailColorToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.snakeTailColorToolStripMenuItem.Text = "Цвет";
            this.snakeTailColorToolStripMenuItem.Click += new System.EventHandler(this.snakeTailColorToolStripMenuItem_Click);
            // 
            // snakeTailTextureToolStripMenuItem
            // 
            this.snakeTailTextureToolStripMenuItem.Name = "snakeTailTextureToolStripMenuItem";
            this.snakeTailTextureToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.snakeTailTextureToolStripMenuItem.Text = "Текстура";
            this.snakeTailTextureToolStripMenuItem.Click += new System.EventHandler(this.snakeTailTextureToolStripMenuItem_Click);
            // 
            // openFileDialog
            // 
            this.openFileDialog.FileName = "openFileDialog1";
            // 
            // Lab6Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1278, 574);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.zoomLabel);
            this.Controls.Add(this.zoomTrackBar);
            this.Controls.Add(this.angleLabel);
            this.Controls.Add(this.angleTrackBar);
            this.Controls.Add(this.zLabel);
            this.Controls.Add(this.zTrackBar);
            this.Controls.Add(this.yLabel);
            this.Controls.Add(this.yTrackBar);
            this.Controls.Add(this.xLabel);
            this.Controls.Add(this.xTrackBar);
            this.Controls.Add(this.wireCheckBox);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.rotationComboBox);
            this.Controls.Add(this.AnT);
            this.Controls.Add(this.menuStrip);
            this.MainMenuStrip = this.menuStrip;
            this.Name = "Lab6Form";
            this.Text = "Lab6Form";
            this.Load += new System.EventHandler(this.Lab6Form_Load);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.Lab6Form_KeyDown);
            ((System.ComponentModel.ISupportInitialize)(this.zoomTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.angleTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.zTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.yTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xTrackBar)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.appleCountUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.diametrUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.columnsUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rowsUpDown)).EndInit();
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label zoomLabel;
        private System.Windows.Forms.TrackBar zoomTrackBar;
        private System.Windows.Forms.Label angleLabel;
        private System.Windows.Forms.TrackBar angleTrackBar;
        private System.Windows.Forms.Label zLabel;
        private System.Windows.Forms.TrackBar zTrackBar;
        private System.Windows.Forms.Label yLabel;
        private System.Windows.Forms.TrackBar yTrackBar;
        private System.Windows.Forms.Label xLabel;
        private System.Windows.Forms.TrackBar xTrackBar;
        private System.Windows.Forms.CheckBox wireCheckBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox rotationComboBox;
        private Tao.Platform.Windows.SimpleOpenGlControl AnT;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button upBtn;
        private System.Windows.Forms.NumericUpDown diametrUpDown;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.NumericUpDown columnsUpDown;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.NumericUpDown rowsUpDown;
        private System.Windows.Forms.Button downBtn;
        private System.Windows.Forms.Button leftBtn;
        private System.Windows.Forms.Button rightBtn;
        private System.Windows.Forms.Button stopBtn;
        private System.Windows.Forms.Timer renderTimer;
        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem objToolStripMenuItem;
        private System.Windows.Forms.OpenFileDialog openFileDialog;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ToolStripMenuItem appleToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bodyToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem appleBodyColorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem appleBodyTextureToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem snakeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem headToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem snakeHeadColorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem snakeHeadTextureToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bodyToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem snakeBodyColorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem snakeBodyTextureToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tailToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem snakeTailColorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem snakeTailTextureToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem branchToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem appleBranchColorToolStripMenuItem4;
        private System.Windows.Forms.ToolStripMenuItem appleBranchTextureToolStripMenuItem4;
        private System.Windows.Forms.ToolStripMenuItem leafToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem appleLeafColorToolStripMenuItem5;
        private System.Windows.Forms.ToolStripMenuItem appleLeafTextureToolStripMenuItem5;
        private System.Windows.Forms.ToolStripMenuItem gridToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gridColorToolStripMenuItem;
        private System.Windows.Forms.ColorDialog colorDialog;
        private System.Windows.Forms.NumericUpDown appleCountUpDown;
        private System.Windows.Forms.Label label2;
    }
}