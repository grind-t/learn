namespace WindowsFormsApp1
{
    partial class Lab22Form
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
            this.AnT = new Tao.Platform.Windows.SimpleOpenGlControl();
            this.showBoundsCheckBox = new System.Windows.Forms.CheckBox();
            this.HLabel = new System.Windows.Forms.Label();
            this.HNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this.WNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this.WLabel = new System.Windows.Forms.Label();
            this.dNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this.dLabel = new System.Windows.Forms.Label();
            this.Y0NumericUpDown = new System.Windows.Forms.NumericUpDown();
            this.Y0Label = new System.Windows.Forms.Label();
            this.X0Label = new System.Windows.Forms.Label();
            this.X0NumericUpDown = new System.Windows.Forms.NumericUpDown();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.HNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.WNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Y0NumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.X0NumericUpDown)).BeginInit();
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
            this.AnT.Size = new System.Drawing.Size(713, 482);
            this.AnT.StencilBits = ((byte)(0));
            this.AnT.TabIndex = 1;
            // 
            // showBoundsCheckBox
            // 
            this.showBoundsCheckBox.AutoSize = true;
            this.showBoundsCheckBox.Location = new System.Drawing.Point(806, 221);
            this.showBoundsCheckBox.Name = "showBoundsCheckBox";
            this.showBoundsCheckBox.Size = new System.Drawing.Size(175, 24);
            this.showBoundsCheckBox.TabIndex = 26;
            this.showBoundsCheckBox.Text = "Показать границы";
            this.showBoundsCheckBox.UseVisualStyleBackColor = true;
            this.showBoundsCheckBox.CheckedChanged += new System.EventHandler(this.button1_Click);
            // 
            // HLabel
            // 
            this.HLabel.AutoSize = true;
            this.HLabel.Location = new System.Drawing.Point(858, 166);
            this.HLabel.Name = "HLabel";
            this.HLabel.Size = new System.Drawing.Size(21, 20);
            this.HLabel.TabIndex = 25;
            this.HLabel.Text = "H";
            // 
            // HNumericUpDown
            // 
            this.HNumericUpDown.Location = new System.Drawing.Point(862, 189);
            this.HNumericUpDown.Name = "HNumericUpDown";
            this.HNumericUpDown.Size = new System.Drawing.Size(50, 26);
            this.HNumericUpDown.TabIndex = 24;
            this.HNumericUpDown.Value = new decimal(new int[] {
            10,
            0,
            0,
            0});
            this.HNumericUpDown.ValueChanged += new System.EventHandler(this.button1_Click);
            // 
            // WNumericUpDown
            // 
            this.WNumericUpDown.Location = new System.Drawing.Point(806, 189);
            this.WNumericUpDown.Name = "WNumericUpDown";
            this.WNumericUpDown.Size = new System.Drawing.Size(50, 26);
            this.WNumericUpDown.TabIndex = 23;
            this.WNumericUpDown.Value = new decimal(new int[] {
            10,
            0,
            0,
            0});
            this.WNumericUpDown.ValueChanged += new System.EventHandler(this.button1_Click);
            // 
            // WLabel
            // 
            this.WLabel.AutoSize = true;
            this.WLabel.Location = new System.Drawing.Point(806, 166);
            this.WLabel.Name = "WLabel";
            this.WLabel.Size = new System.Drawing.Size(24, 20);
            this.WLabel.TabIndex = 22;
            this.WLabel.Text = "W";
            // 
            // dNumericUpDown
            // 
            this.dNumericUpDown.Location = new System.Drawing.Point(922, 137);
            this.dNumericUpDown.Name = "dNumericUpDown";
            this.dNumericUpDown.Size = new System.Drawing.Size(50, 26);
            this.dNumericUpDown.TabIndex = 21;
            this.dNumericUpDown.Value = new decimal(new int[] {
            5,
            0,
            0,
            0});
            this.dNumericUpDown.ValueChanged += new System.EventHandler(this.button1_Click);
            // 
            // dLabel
            // 
            this.dLabel.AutoSize = true;
            this.dLabel.Location = new System.Drawing.Point(918, 114);
            this.dLabel.Name = "dLabel";
            this.dLabel.Size = new System.Drawing.Size(18, 20);
            this.dLabel.TabIndex = 20;
            this.dLabel.Text = "d";
            // 
            // Y0NumericUpDown
            // 
            this.Y0NumericUpDown.Location = new System.Drawing.Point(866, 137);
            this.Y0NumericUpDown.Name = "Y0NumericUpDown";
            this.Y0NumericUpDown.Size = new System.Drawing.Size(50, 26);
            this.Y0NumericUpDown.TabIndex = 19;
            this.Y0NumericUpDown.Value = new decimal(new int[] {
            5,
            0,
            0,
            0});
            this.Y0NumericUpDown.ValueChanged += new System.EventHandler(this.button1_Click);
            // 
            // Y0Label
            // 
            this.Y0Label.AutoSize = true;
            this.Y0Label.Location = new System.Drawing.Point(862, 114);
            this.Y0Label.Name = "Y0Label";
            this.Y0Label.Size = new System.Drawing.Size(29, 20);
            this.Y0Label.TabIndex = 18;
            this.Y0Label.Text = "Y0";
            // 
            // X0Label
            // 
            this.X0Label.AutoSize = true;
            this.X0Label.Location = new System.Drawing.Point(806, 114);
            this.X0Label.Name = "X0Label";
            this.X0Label.Size = new System.Drawing.Size(29, 20);
            this.X0Label.TabIndex = 17;
            this.X0Label.Text = "X0";
            // 
            // X0NumericUpDown
            // 
            this.X0NumericUpDown.Location = new System.Drawing.Point(810, 137);
            this.X0NumericUpDown.Name = "X0NumericUpDown";
            this.X0NumericUpDown.Size = new System.Drawing.Size(50, 26);
            this.X0NumericUpDown.TabIndex = 16;
            this.X0NumericUpDown.Value = new decimal(new int[] {
            5,
            0,
            0,
            0});
            this.X0NumericUpDown.ValueChanged += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(806, 64);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(160, 47);
            this.button2.TabIndex = 15;
            this.button2.Text = "Выйти";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(806, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(160, 46);
            this.button1.TabIndex = 14;
            this.button1.Text = "Визуализировать";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Lab2Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(978, 544);
            this.Controls.Add(this.showBoundsCheckBox);
            this.Controls.Add(this.HLabel);
            this.Controls.Add(this.HNumericUpDown);
            this.Controls.Add(this.WNumericUpDown);
            this.Controls.Add(this.WLabel);
            this.Controls.Add(this.dNumericUpDown);
            this.Controls.Add(this.dLabel);
            this.Controls.Add(this.Y0NumericUpDown);
            this.Controls.Add(this.Y0Label);
            this.Controls.Add(this.X0Label);
            this.Controls.Add(this.X0NumericUpDown);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.AnT);
            this.Name = "Lab2Form";
            this.Text = "Lab2Form";
            this.Load += new System.EventHandler(this.Lab2Form_Load);
            ((System.ComponentModel.ISupportInitialize)(this.HNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.WNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Y0NumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.X0NumericUpDown)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Tao.Platform.Windows.SimpleOpenGlControl AnT;
        private System.Windows.Forms.CheckBox showBoundsCheckBox;
        private System.Windows.Forms.Label HLabel;
        private System.Windows.Forms.NumericUpDown HNumericUpDown;
        private System.Windows.Forms.NumericUpDown WNumericUpDown;
        private System.Windows.Forms.Label WLabel;
        private System.Windows.Forms.NumericUpDown dNumericUpDown;
        private System.Windows.Forms.Label dLabel;
        private System.Windows.Forms.NumericUpDown Y0NumericUpDown;
        private System.Windows.Forms.Label Y0Label;
        private System.Windows.Forms.Label X0Label;
        private System.Windows.Forms.NumericUpDown X0NumericUpDown;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
    }
}