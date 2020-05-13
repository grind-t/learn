namespace WindowsFormsApp1
{
    partial class Lab5Form
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
            this.AnT = new Tao.Platform.Windows.SimpleOpenGlControl();
            this.renderTimer = new System.Windows.Forms.Timer(this.components);
            this.label1 = new System.Windows.Forms.Label();
            this.startAngleUpDown = new System.Windows.Forms.NumericUpDown();
            this.label2 = new System.Windows.Forms.Label();
            this.armLenUpDown = new System.Windows.Forms.NumericUpDown();
            this.bobMassUpDown = new System.Windows.Forms.NumericUpDown();
            this.label3 = new System.Windows.Forms.Label();
            this.angleLabel = new System.Windows.Forms.Label();
            this.angularVelLabel = new System.Windows.Forms.Label();
            this.angularAccLabel = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.pivotXUpDown = new System.Windows.Forms.NumericUpDown();
            this.pivotYUpDown = new System.Windows.Forms.NumericUpDown();
            this.label5 = new System.Windows.Forms.Label();
            this.dampingUpDown = new System.Windows.Forms.NumericUpDown();
            this.timeLabel = new System.Windows.Forms.Label();
            this.periodLabel = new System.Windows.Forms.Label();
            this.gravityForceLabel = new System.Windows.Forms.Label();
            this.tangentForceLabel = new System.Windows.Forms.Label();
            this.perpendForceLabel = new System.Windows.Forms.Label();
            this.tensionForceLabel = new System.Windows.Forms.Label();
            this.velocityGraph = new Tao.Platform.Windows.SimpleOpenGlControl();
            this.energyGraph = new Tao.Platform.Windows.SimpleOpenGlControl();
            this.label6 = new System.Windows.Forms.Label();
            this.velocityScaleUpDown = new System.Windows.Forms.NumericUpDown();
            this.timeScaleUpDown = new System.Windows.Forms.NumericUpDown();
            this.label7 = new System.Windows.Forms.Label();
            this.energyScaleUpDown = new System.Windows.Forms.NumericUpDown();
            this.kineticEnergyLabel = new System.Windows.Forms.Label();
            this.potentialEnergyLabel = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.rotateXUpDown = new System.Windows.Forms.NumericUpDown();
            this.rotateYUpDown = new System.Windows.Forms.NumericUpDown();
            this.rotateZUpDown = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.startAngleUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.armLenUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bobMassUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pivotXUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pivotYUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dampingUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.velocityScaleUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeScaleUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.energyScaleUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rotateXUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rotateYUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rotateZUpDown)).BeginInit();
            this.SuspendLayout();
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
            this.AnT.Location = new System.Drawing.Point(268, 12);
            this.AnT.Name = "AnT";
            this.AnT.Size = new System.Drawing.Size(600, 600);
            this.AnT.StencilBits = ((byte)(0));
            this.AnT.TabIndex = 0;
            // 
            // renderTimer
            // 
            this.renderTimer.Tick += new System.EventHandler(this.renderTimer_Tick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(874, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(137, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Начальный угол:";
            // 
            // startAngleUpDown
            // 
            this.startAngleUpDown.Location = new System.Drawing.Point(878, 35);
            this.startAngleUpDown.Maximum = new decimal(new int[] {
            90,
            0,
            0,
            0});
            this.startAngleUpDown.Minimum = new decimal(new int[] {
            90,
            0,
            0,
            -2147483648});
            this.startAngleUpDown.Name = "startAngleUpDown";
            this.startAngleUpDown.Size = new System.Drawing.Size(221, 26);
            this.startAngleUpDown.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(874, 168);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(139, 20);
            this.label2.TabIndex = 4;
            this.label2.Text = "Длина маятника:";
            // 
            // armLenUpDown
            // 
            this.armLenUpDown.Location = new System.Drawing.Point(878, 191);
            this.armLenUpDown.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.armLenUpDown.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.armLenUpDown.Name = "armLenUpDown";
            this.armLenUpDown.Size = new System.Drawing.Size(221, 26);
            this.armLenUpDown.TabIndex = 5;
            this.armLenUpDown.Value = new decimal(new int[] {
            100,
            0,
            0,
            0});
            // 
            // bobMassUpDown
            // 
            this.bobMassUpDown.Location = new System.Drawing.Point(878, 243);
            this.bobMassUpDown.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.bobMassUpDown.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.bobMassUpDown.Name = "bobMassUpDown";
            this.bobMassUpDown.Size = new System.Drawing.Size(221, 26);
            this.bobMassUpDown.TabIndex = 7;
            this.bobMassUpDown.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(874, 220);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(104, 20);
            this.label3.TabIndex = 6;
            this.label3.Text = "Масса груза:";
            // 
            // angleLabel
            // 
            this.angleLabel.AutoSize = true;
            this.angleLabel.Location = new System.Drawing.Point(874, 364);
            this.angleLabel.Name = "angleLabel";
            this.angleLabel.Size = new System.Drawing.Size(49, 20);
            this.angleLabel.TabIndex = 8;
            this.angleLabel.Text = "Угол:";
            // 
            // angularVelLabel
            // 
            this.angularVelLabel.AutoSize = true;
            this.angularVelLabel.Location = new System.Drawing.Point(874, 384);
            this.angularVelLabel.Name = "angularVelLabel";
            this.angularVelLabel.Size = new System.Drawing.Size(117, 20);
            this.angularVelLabel.TabIndex = 9;
            this.angularVelLabel.Text = "Угл. скорость:";
            // 
            // angularAccLabel
            // 
            this.angularAccLabel.AutoSize = true;
            this.angularAccLabel.Location = new System.Drawing.Point(874, 404);
            this.angularAccLabel.Name = "angularAccLabel";
            this.angularAccLabel.Size = new System.Drawing.Size(125, 20);
            this.angularAccLabel.TabIndex = 10;
            this.angularAccLabel.Text = "Угл. ускорение:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(874, 116);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(215, 20);
            this.label4.TabIndex = 11;
            this.label4.Text = "Координаты крепления x,y:";
            // 
            // pivotXUpDown
            // 
            this.pivotXUpDown.Location = new System.Drawing.Point(878, 139);
            this.pivotXUpDown.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.pivotXUpDown.Name = "pivotXUpDown";
            this.pivotXUpDown.Size = new System.Drawing.Size(100, 26);
            this.pivotXUpDown.TabIndex = 12;
            this.pivotXUpDown.Value = new decimal(new int[] {
            200,
            0,
            0,
            0});
            // 
            // pivotYUpDown
            // 
            this.pivotYUpDown.Location = new System.Drawing.Point(999, 139);
            this.pivotYUpDown.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.pivotYUpDown.Name = "pivotYUpDown";
            this.pivotYUpDown.Size = new System.Drawing.Size(100, 26);
            this.pivotYUpDown.TabIndex = 13;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(874, 272);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(180, 20);
            this.label5.TabIndex = 14;
            this.label5.Text = "Демпфирование / 100:";
            // 
            // dampingUpDown
            // 
            this.dampingUpDown.Location = new System.Drawing.Point(878, 295);
            this.dampingUpDown.Name = "dampingUpDown";
            this.dampingUpDown.Size = new System.Drawing.Size(221, 26);
            this.dampingUpDown.TabIndex = 15;
            this.dampingUpDown.Value = new decimal(new int[] {
            95,
            0,
            0,
            0});
            // 
            // timeLabel
            // 
            this.timeLabel.AutoSize = true;
            this.timeLabel.Location = new System.Drawing.Point(874, 324);
            this.timeLabel.Name = "timeLabel";
            this.timeLabel.Size = new System.Drawing.Size(62, 20);
            this.timeLabel.TabIndex = 16;
            this.timeLabel.Text = "Время:";
            // 
            // periodLabel
            // 
            this.periodLabel.AutoSize = true;
            this.periodLabel.Location = new System.Drawing.Point(874, 344);
            this.periodLabel.Name = "periodLabel";
            this.periodLabel.Size = new System.Drawing.Size(72, 20);
            this.periodLabel.TabIndex = 17;
            this.periodLabel.Text = "Период:";
            // 
            // gravityForceLabel
            // 
            this.gravityForceLabel.AutoSize = true;
            this.gravityForceLabel.Location = new System.Drawing.Point(874, 424);
            this.gravityForceLabel.Name = "gravityForceLabel";
            this.gravityForceLabel.Size = new System.Drawing.Size(120, 20);
            this.gravityForceLabel.TabIndex = 18;
            this.gravityForceLabel.Text = "Сила тяжести:";
            // 
            // tangentForceLabel
            // 
            this.tangentForceLabel.AutoSize = true;
            this.tangentForceLabel.Location = new System.Drawing.Point(874, 444);
            this.tangentForceLabel.Name = "tangentForceLabel";
            this.tangentForceLabel.Size = new System.Drawing.Size(175, 20);
            this.tangentForceLabel.TabIndex = 19;
            this.tangentForceLabel.Text = "Сила по касат. к дуге:";
            // 
            // perpendForceLabel
            // 
            this.perpendForceLabel.AutoSize = true;
            this.perpendForceLabel.Location = new System.Drawing.Point(874, 464);
            this.perpendForceLabel.Name = "perpendForceLabel";
            this.perpendForceLabel.Size = new System.Drawing.Size(152, 20);
            this.perpendForceLabel.TabIndex = 20;
            this.perpendForceLabel.Text = "Сила перпен. дуге:";
            // 
            // tensionForceLabel
            // 
            this.tensionForceLabel.AutoSize = true;
            this.tensionForceLabel.Location = new System.Drawing.Point(874, 484);
            this.tensionForceLabel.Name = "tensionForceLabel";
            this.tensionForceLabel.Size = new System.Drawing.Size(139, 20);
            this.tensionForceLabel.TabIndex = 21;
            this.tensionForceLabel.Text = "Сила натяжения:";
            // 
            // velocityGraph
            // 
            this.velocityGraph.AccumBits = ((byte)(0));
            this.velocityGraph.AutoCheckErrors = false;
            this.velocityGraph.AutoFinish = false;
            this.velocityGraph.AutoMakeCurrent = true;
            this.velocityGraph.AutoSwapBuffers = true;
            this.velocityGraph.BackColor = System.Drawing.Color.Black;
            this.velocityGraph.ColorBits = ((byte)(32));
            this.velocityGraph.DepthBits = ((byte)(16));
            this.velocityGraph.Location = new System.Drawing.Point(12, 12);
            this.velocityGraph.Name = "velocityGraph";
            this.velocityGraph.Size = new System.Drawing.Size(250, 250);
            this.velocityGraph.StencilBits = ((byte)(0));
            this.velocityGraph.TabIndex = 22;
            // 
            // energyGraph
            // 
            this.energyGraph.AccumBits = ((byte)(0));
            this.energyGraph.AutoCheckErrors = false;
            this.energyGraph.AutoFinish = false;
            this.energyGraph.AutoMakeCurrent = true;
            this.energyGraph.AutoSwapBuffers = true;
            this.energyGraph.BackColor = System.Drawing.Color.Black;
            this.energyGraph.ColorBits = ((byte)(32));
            this.energyGraph.DepthBits = ((byte)(16));
            this.energyGraph.Location = new System.Drawing.Point(12, 330);
            this.energyGraph.Name = "energyGraph";
            this.energyGraph.Size = new System.Drawing.Size(250, 250);
            this.energyGraph.StencilBits = ((byte)(0));
            this.energyGraph.TabIndex = 23;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(8, 265);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(190, 20);
            this.label6.TabIndex = 24;
            this.label6.Text = "Цена деления U / 100, t:";
            // 
            // velocityScaleUpDown
            // 
            this.velocityScaleUpDown.Location = new System.Drawing.Point(12, 288);
            this.velocityScaleUpDown.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.velocityScaleUpDown.Name = "velocityScaleUpDown";
            this.velocityScaleUpDown.Size = new System.Drawing.Size(106, 26);
            this.velocityScaleUpDown.TabIndex = 26;
            this.velocityScaleUpDown.Value = new decimal(new int[] {
            10,
            0,
            0,
            0});
            // 
            // timeScaleUpDown
            // 
            this.timeScaleUpDown.Location = new System.Drawing.Point(156, 288);
            this.timeScaleUpDown.Maximum = new decimal(new int[] {
            100000,
            0,
            0,
            0});
            this.timeScaleUpDown.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.timeScaleUpDown.Name = "timeScaleUpDown";
            this.timeScaleUpDown.Size = new System.Drawing.Size(106, 26);
            this.timeScaleUpDown.TabIndex = 27;
            this.timeScaleUpDown.Value = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(8, 588);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(176, 20);
            this.label7.TabIndex = 28;
            this.label7.Text = "Цена деления E / 100:";
            // 
            // energyScaleUpDown
            // 
            this.energyScaleUpDown.Location = new System.Drawing.Point(190, 586);
            this.energyScaleUpDown.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.energyScaleUpDown.Name = "energyScaleUpDown";
            this.energyScaleUpDown.Size = new System.Drawing.Size(72, 26);
            this.energyScaleUpDown.TabIndex = 29;
            this.energyScaleUpDown.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // kineticEnergyLabel
            // 
            this.kineticEnergyLabel.AutoSize = true;
            this.kineticEnergyLabel.Location = new System.Drawing.Point(874, 504);
            this.kineticEnergyLabel.Name = "kineticEnergyLabel";
            this.kineticEnergyLabel.Size = new System.Drawing.Size(146, 20);
            this.kineticEnergyLabel.TabIndex = 30;
            this.kineticEnergyLabel.Text = "Кинетич. энергия:";
            // 
            // potentialEnergyLabel
            // 
            this.potentialEnergyLabel.AutoSize = true;
            this.potentialEnergyLabel.Location = new System.Drawing.Point(874, 524);
            this.potentialEnergyLabel.Name = "potentialEnergyLabel";
            this.potentialEnergyLabel.Size = new System.Drawing.Size(139, 20);
            this.potentialEnergyLabel.TabIndex = 31;
            this.potentialEnergyLabel.Text = "Потенц. энергия:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(874, 64);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(148, 20);
            this.label8.TabIndex = 32;
            this.label8.Text = "Вектор вращения:";
            // 
            // rotateXUpDown
            // 
            this.rotateXUpDown.Location = new System.Drawing.Point(878, 87);
            this.rotateXUpDown.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.rotateXUpDown.Minimum = new decimal(new int[] {
            1000,
            0,
            0,
            -2147483648});
            this.rotateXUpDown.Name = "rotateXUpDown";
            this.rotateXUpDown.Size = new System.Drawing.Size(68, 26);
            this.rotateXUpDown.TabIndex = 33;
            // 
            // rotateYUpDown
            // 
            this.rotateYUpDown.Location = new System.Drawing.Point(952, 87);
            this.rotateYUpDown.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.rotateYUpDown.Minimum = new decimal(new int[] {
            1000,
            0,
            0,
            -2147483648});
            this.rotateYUpDown.Name = "rotateYUpDown";
            this.rotateYUpDown.Size = new System.Drawing.Size(68, 26);
            this.rotateYUpDown.TabIndex = 34;
            // 
            // rotateZUpDown
            // 
            this.rotateZUpDown.Location = new System.Drawing.Point(1026, 87);
            this.rotateZUpDown.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.rotateZUpDown.Minimum = new decimal(new int[] {
            1000,
            0,
            0,
            -2147483648});
            this.rotateZUpDown.Name = "rotateZUpDown";
            this.rotateZUpDown.Size = new System.Drawing.Size(68, 26);
            this.rotateZUpDown.TabIndex = 35;
            this.rotateZUpDown.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // Lab5Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1178, 624);
            this.Controls.Add(this.rotateZUpDown);
            this.Controls.Add(this.rotateYUpDown);
            this.Controls.Add(this.rotateXUpDown);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.potentialEnergyLabel);
            this.Controls.Add(this.kineticEnergyLabel);
            this.Controls.Add(this.energyScaleUpDown);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.timeScaleUpDown);
            this.Controls.Add(this.velocityScaleUpDown);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.energyGraph);
            this.Controls.Add(this.velocityGraph);
            this.Controls.Add(this.tensionForceLabel);
            this.Controls.Add(this.perpendForceLabel);
            this.Controls.Add(this.tangentForceLabel);
            this.Controls.Add(this.gravityForceLabel);
            this.Controls.Add(this.periodLabel);
            this.Controls.Add(this.timeLabel);
            this.Controls.Add(this.dampingUpDown);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.pivotYUpDown);
            this.Controls.Add(this.pivotXUpDown);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.angularAccLabel);
            this.Controls.Add(this.angularVelLabel);
            this.Controls.Add(this.angleLabel);
            this.Controls.Add(this.bobMassUpDown);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.armLenUpDown);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.startAngleUpDown);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.AnT);
            this.Name = "Lab5Form";
            this.Text = "Lab5Form";
            this.Load += new System.EventHandler(this.Lab5Form_Load);
            ((System.ComponentModel.ISupportInitialize)(this.startAngleUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.armLenUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bobMassUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pivotXUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pivotYUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dampingUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.velocityScaleUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeScaleUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.energyScaleUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rotateXUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rotateYUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rotateZUpDown)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Tao.Platform.Windows.SimpleOpenGlControl AnT;
        private System.Windows.Forms.Timer renderTimer;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.NumericUpDown startAngleUpDown;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown armLenUpDown;
        private System.Windows.Forms.NumericUpDown bobMassUpDown;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label angleLabel;
        private System.Windows.Forms.Label angularVelLabel;
        private System.Windows.Forms.Label angularAccLabel;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.NumericUpDown pivotXUpDown;
        private System.Windows.Forms.NumericUpDown pivotYUpDown;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.NumericUpDown dampingUpDown;
        private System.Windows.Forms.Label timeLabel;
        private System.Windows.Forms.Label periodLabel;
        private System.Windows.Forms.Label gravityForceLabel;
        private System.Windows.Forms.Label tangentForceLabel;
        private System.Windows.Forms.Label perpendForceLabel;
        private System.Windows.Forms.Label tensionForceLabel;
        private Tao.Platform.Windows.SimpleOpenGlControl velocityGraph;
        private Tao.Platform.Windows.SimpleOpenGlControl energyGraph;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.NumericUpDown velocityScaleUpDown;
        private System.Windows.Forms.NumericUpDown timeScaleUpDown;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.NumericUpDown energyScaleUpDown;
        private System.Windows.Forms.Label kineticEnergyLabel;
        private System.Windows.Forms.Label potentialEnergyLabel;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.NumericUpDown rotateXUpDown;
        private System.Windows.Forms.NumericUpDown rotateYUpDown;
        private System.Windows.Forms.NumericUpDown rotateZUpDown;
    }
}