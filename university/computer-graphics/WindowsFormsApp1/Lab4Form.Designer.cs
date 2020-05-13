namespace WindowsFormsApp1
{
    partial class Lab4Form
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
            this.PointInGrap = new System.Windows.Forms.Timer(this.components);
            this.xMinNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this.Max = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.xMaxNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this.label2 = new System.Windows.Forms.Label();
            this.yMinNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this.label3 = new System.Windows.Forms.Label();
            this.yMaxNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this.label4 = new System.Windows.Forms.Label();
            this.funcComboBox = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.colorObjComboBox = new System.Windows.Forms.ComboBox();
            this.colorDialog1 = new System.Windows.Forms.ColorDialog();
            ((System.ComponentModel.ISupportInitialize)(this.xMinNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xMaxNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.yMinNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.yMaxNumericUpDown)).BeginInit();
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
            this.AnT.Location = new System.Drawing.Point(12, 12);
            this.AnT.Name = "AnT";
            this.AnT.Size = new System.Drawing.Size(600, 600);
            this.AnT.StencilBits = ((byte)(0));
            this.AnT.TabIndex = 0;
            this.AnT.MouseMove += new System.Windows.Forms.MouseEventHandler(this.AnT_MouseMove);
            // 
            // PointInGrap
            // 
            this.PointInGrap.Interval = 30;
            this.PointInGrap.Tick += new System.EventHandler(this.PointInGrap_Tick);
            // 
            // xMinNumericUpDown
            // 
            this.xMinNumericUpDown.Location = new System.Drawing.Point(833, 31);
            this.xMinNumericUpDown.Maximum = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.xMinNumericUpDown.Minimum = new decimal(new int[] {
            100,
            0,
            0,
            -2147483648});
            this.xMinNumericUpDown.Name = "xMinNumericUpDown";
            this.xMinNumericUpDown.Size = new System.Drawing.Size(83, 26);
            this.xMinNumericUpDown.TabIndex = 1;
            this.xMinNumericUpDown.Value = new decimal(new int[] {
            15,
            0,
            0,
            -2147483648});
            // 
            // Max
            // 
            this.Max.AutoSize = true;
            this.Max.Location = new System.Drawing.Point(829, 8);
            this.Max.Name = "Max";
            this.Max.Size = new System.Drawing.Size(59, 20);
            this.Max.TabIndex = 2;
            this.Max.Text = "Мин. x:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(829, 60);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 20);
            this.label1.TabIndex = 3;
            this.label1.Text = "Макс. x:";
            // 
            // xMaxNumericUpDown
            // 
            this.xMaxNumericUpDown.Location = new System.Drawing.Point(833, 83);
            this.xMaxNumericUpDown.Name = "xMaxNumericUpDown";
            this.xMaxNumericUpDown.Size = new System.Drawing.Size(83, 26);
            this.xMaxNumericUpDown.TabIndex = 4;
            this.xMaxNumericUpDown.Value = new decimal(new int[] {
            15,
            0,
            0,
            0});
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(829, 112);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 20);
            this.label2.TabIndex = 5;
            this.label2.Text = "Мин. y:";
            // 
            // yMinNumericUpDown
            // 
            this.yMinNumericUpDown.Location = new System.Drawing.Point(833, 135);
            this.yMinNumericUpDown.Maximum = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.yMinNumericUpDown.Minimum = new decimal(new int[] {
            100,
            0,
            0,
            -2147483648});
            this.yMinNumericUpDown.Name = "yMinNumericUpDown";
            this.yMinNumericUpDown.Size = new System.Drawing.Size(83, 26);
            this.yMinNumericUpDown.TabIndex = 6;
            this.yMinNumericUpDown.Value = new decimal(new int[] {
            15,
            0,
            0,
            -2147483648});
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(829, 164);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(66, 20);
            this.label3.TabIndex = 7;
            this.label3.Text = "Макс. y:";
            // 
            // yMaxNumericUpDown
            // 
            this.yMaxNumericUpDown.Location = new System.Drawing.Point(833, 187);
            this.yMaxNumericUpDown.Name = "yMaxNumericUpDown";
            this.yMaxNumericUpDown.Size = new System.Drawing.Size(83, 26);
            this.yMaxNumericUpDown.TabIndex = 8;
            this.yMaxNumericUpDown.Value = new decimal(new int[] {
            15,
            0,
            0,
            0});
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(665, 217);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(79, 20);
            this.label4.TabIndex = 9;
            this.label4.Text = "Функция:";
            // 
            // funcComboBox
            // 
            this.funcComboBox.FormattingEnabled = true;
            this.funcComboBox.Items.AddRange(new object[] {
            "sin(x)*3 + 1",
            "|x| - 2",
            "e^x - 5"});
            this.funcComboBox.Location = new System.Drawing.Point(669, 240);
            this.funcComboBox.Name = "funcComboBox";
            this.funcComboBox.Size = new System.Drawing.Size(247, 28);
            this.funcComboBox.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(665, 271);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(120, 20);
            this.label5.TabIndex = 11;
            this.label5.Text = "Цвет объекта:";
            // 
            // colorObjComboBox
            // 
            this.colorObjComboBox.FormattingEnabled = true;
            this.colorObjComboBox.Items.AddRange(new object[] {
            "График",
            "Точка визуализации кадра",
            "Сетка",
            "Оси",
            "Позиция курсора мыши"});
            this.colorObjComboBox.Location = new System.Drawing.Point(669, 294);
            this.colorObjComboBox.Name = "colorObjComboBox";
            this.colorObjComboBox.Size = new System.Drawing.Size(247, 28);
            this.colorObjComboBox.TabIndex = 12;
            this.colorObjComboBox.SelectionChangeCommitted += new System.EventHandler(this.colorObjComboBox_SelectionChangeCommitted);
            // 
            // colorDialog1
            // 
            this.colorDialog1.SolidColorOnly = true;
            // 
            // Lab4Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(928, 624);
            this.Controls.Add(this.colorObjComboBox);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.funcComboBox);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.yMaxNumericUpDown);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.yMinNumericUpDown);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.xMaxNumericUpDown);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Max);
            this.Controls.Add(this.xMinNumericUpDown);
            this.Controls.Add(this.AnT);
            this.Name = "Lab4Form";
            this.Text = "Lab4Form";
            this.Load += new System.EventHandler(this.Lab4Form_Load);
            ((System.ComponentModel.ISupportInitialize)(this.xMinNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xMaxNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.yMinNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.yMaxNumericUpDown)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Tao.Platform.Windows.SimpleOpenGlControl AnT;
        private System.Windows.Forms.Timer PointInGrap;
        private System.Windows.Forms.NumericUpDown xMinNumericUpDown;
        private System.Windows.Forms.Label Max;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.NumericUpDown xMaxNumericUpDown;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown yMinNumericUpDown;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.NumericUpDown yMaxNumericUpDown;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox funcComboBox;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox colorObjComboBox;
        private System.Windows.Forms.ColorDialog colorDialog1;
    }
}