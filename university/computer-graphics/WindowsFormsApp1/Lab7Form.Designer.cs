namespace WindowsFormsApp1
{
    partial class Lab7Form
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
            this.label1 = new System.Windows.Forms.Label();
            this.rotationComboBox = new System.Windows.Forms.ComboBox();
            this.renderTimer = new System.Windows.Forms.Timer(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.ABUpDown = new System.Windows.Forms.NumericUpDown();
            this.label3 = new System.Windows.Forms.Label();
            this.mPathCheckBox = new System.Windows.Forms.CheckBox();
            this.renderIntervalLabel = new System.Windows.Forms.Label();
            this.AMUpDown = new System.Windows.Forms.NumericUpDown();
            this.label10 = new System.Windows.Forms.Label();
            this.OAUpDown = new System.Windows.Forms.NumericUpDown();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.renderIntervalTrackBar = new System.Windows.Forms.TrackBar();
            ((System.ComponentModel.ISupportInitialize)(this.zoomTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.angleTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.zTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.yTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xTrackBar)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ABUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.AMUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.OAUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.renderIntervalTrackBar)).BeginInit();
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
            this.AnT.Size = new System.Drawing.Size(650, 520);
            this.AnT.StencilBits = ((byte)(0));
            this.AnT.TabIndex = 17;
            // 
            // zoomLabel
            // 
            this.zoomLabel.AutoSize = true;
            this.zoomLabel.Location = new System.Drawing.Point(672, 396);
            this.zoomLabel.Name = "zoomLabel";
            this.zoomLabel.Size = new System.Drawing.Size(52, 20);
            this.zoomLabel.TabIndex = 44;
            this.zoomLabel.Text = "zoom:";
            // 
            // zoomTrackBar
            // 
            this.zoomTrackBar.Location = new System.Drawing.Point(672, 419);
            this.zoomTrackBar.Maximum = 5;
            this.zoomTrackBar.Minimum = -5;
            this.zoomTrackBar.Name = "zoomTrackBar";
            this.zoomTrackBar.Size = new System.Drawing.Size(298, 69);
            this.zoomTrackBar.TabIndex = 43;
            this.zoomTrackBar.Value = 1;
            this.zoomTrackBar.Scroll += new System.EventHandler(this.zoomTrackBar_Scroll);
            // 
            // angleLabel
            // 
            this.angleLabel.AutoSize = true;
            this.angleLabel.Location = new System.Drawing.Point(676, 321);
            this.angleLabel.Name = "angleLabel";
            this.angleLabel.Size = new System.Drawing.Size(52, 20);
            this.angleLabel.TabIndex = 42;
            this.angleLabel.Text = "angle:";
            // 
            // angleTrackBar
            // 
            this.angleTrackBar.Location = new System.Drawing.Point(676, 344);
            this.angleTrackBar.Maximum = 360;
            this.angleTrackBar.Minimum = -360;
            this.angleTrackBar.Name = "angleTrackBar";
            this.angleTrackBar.Size = new System.Drawing.Size(298, 69);
            this.angleTrackBar.TabIndex = 41;
            this.angleTrackBar.Scroll += new System.EventHandler(this.angleTrackBar_Scroll);
            // 
            // zLabel
            // 
            this.zLabel.AutoSize = true;
            this.zLabel.Location = new System.Drawing.Point(672, 246);
            this.zLabel.Name = "zLabel";
            this.zLabel.Size = new System.Drawing.Size(21, 20);
            this.zLabel.TabIndex = 40;
            this.zLabel.Text = "z:";
            // 
            // zTrackBar
            // 
            this.zTrackBar.Location = new System.Drawing.Point(672, 269);
            this.zTrackBar.Maximum = 50;
            this.zTrackBar.Minimum = -100;
            this.zTrackBar.Name = "zTrackBar";
            this.zTrackBar.Size = new System.Drawing.Size(298, 69);
            this.zTrackBar.TabIndex = 39;
            this.zTrackBar.Value = -50;
            this.zTrackBar.Scroll += new System.EventHandler(this.zTrackBar_Scroll);
            // 
            // yLabel
            // 
            this.yLabel.AutoSize = true;
            this.yLabel.Location = new System.Drawing.Point(672, 171);
            this.yLabel.Name = "yLabel";
            this.yLabel.Size = new System.Drawing.Size(20, 20);
            this.yLabel.TabIndex = 38;
            this.yLabel.Text = "y:";
            // 
            // yTrackBar
            // 
            this.yTrackBar.Location = new System.Drawing.Point(672, 194);
            this.yTrackBar.Maximum = 100;
            this.yTrackBar.Minimum = -100;
            this.yTrackBar.Name = "yTrackBar";
            this.yTrackBar.Size = new System.Drawing.Size(298, 69);
            this.yTrackBar.TabIndex = 37;
            this.yTrackBar.Scroll += new System.EventHandler(this.yTrackBar_Scroll);
            // 
            // xLabel
            // 
            this.xLabel.AutoSize = true;
            this.xLabel.Location = new System.Drawing.Point(672, 96);
            this.xLabel.Name = "xLabel";
            this.xLabel.Size = new System.Drawing.Size(20, 20);
            this.xLabel.TabIndex = 36;
            this.xLabel.Text = "x:";
            // 
            // xTrackBar
            // 
            this.xTrackBar.Location = new System.Drawing.Point(672, 119);
            this.xTrackBar.Maximum = 100;
            this.xTrackBar.Minimum = -100;
            this.xTrackBar.Name = "xTrackBar";
            this.xTrackBar.Size = new System.Drawing.Size(298, 69);
            this.xTrackBar.TabIndex = 35;
            this.xTrackBar.Scroll += new System.EventHandler(this.xTrackBar_Scroll);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(668, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(143, 20);
            this.label1.TabIndex = 33;
            this.label1.Text = "Вращение по оси:";
            // 
            // rotationComboBox
            // 
            this.rotationComboBox.FormattingEnabled = true;
            this.rotationComboBox.Items.AddRange(new object[] {
            "x",
            "y",
            "z"});
            this.rotationComboBox.Location = new System.Drawing.Point(672, 35);
            this.rotationComboBox.Name = "rotationComboBox";
            this.rotationComboBox.Size = new System.Drawing.Size(298, 28);
            this.rotationComboBox.TabIndex = 32;
            this.rotationComboBox.SelectedIndexChanged += new System.EventHandler(this.rotationComboBox_SelectedIndexChanged);
            // 
            // renderTimer
            // 
            this.renderTimer.Tick += new System.EventHandler(this.renderTimer_Tick);
            // 
            // panel1
            // 
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.renderIntervalTrackBar);
            this.panel1.Controls.Add(this.ABUpDown);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.mPathCheckBox);
            this.panel1.Controls.Add(this.renderIntervalLabel);
            this.panel1.Controls.Add(this.AMUpDown);
            this.panel1.Controls.Add(this.label10);
            this.panel1.Controls.Add(this.OAUpDown);
            this.panel1.Controls.Add(this.label9);
            this.panel1.Controls.Add(this.label8);
            this.panel1.Location = new System.Drawing.Point(979, 12);
            this.panel1.Margin = new System.Windows.Forms.Padding(50, 10, 10, 10);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(280, 510);
            this.panel1.TabIndex = 45;
            // 
            // ABUpDown
            // 
            this.ABUpDown.Location = new System.Drawing.Point(192, 80);
            this.ABUpDown.Margin = new System.Windows.Forms.Padding(10);
            this.ABUpDown.Name = "ABUpDown";
            this.ABUpDown.Size = new System.Drawing.Size(76, 26);
            this.ABUpDown.TabIndex = 9;
            this.ABUpDown.Value = new decimal(new int[] {
            10,
            0,
            0,
            0});
            this.ABUpDown.ValueChanged += new System.EventHandler(this.ABUpDown_ValueChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 82);
            this.label3.Margin = new System.Windows.Forms.Padding(10);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(84, 20);
            this.label3.TabIndex = 8;
            this.label3.Text = "Длина AB";
            // 
            // mPathCheckBox
            // 
            this.mPathCheckBox.AutoSize = true;
            this.mPathCheckBox.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.mPathCheckBox.Location = new System.Drawing.Point(10, 162);
            this.mPathCheckBox.Margin = new System.Windows.Forms.Padding(10);
            this.mPathCheckBox.Name = "mPathCheckBox";
            this.mPathCheckBox.Size = new System.Drawing.Size(141, 24);
            this.mPathCheckBox.TabIndex = 7;
            this.mPathCheckBox.Text = "Траектория M";
            this.mPathCheckBox.UseVisualStyleBackColor = true;
            // 
            // renderIntervalLabel
            // 
            this.renderIntervalLabel.AutoSize = true;
            this.renderIntervalLabel.Location = new System.Drawing.Point(10, 206);
            this.renderIntervalLabel.Margin = new System.Windows.Forms.Padding(10);
            this.renderIntervalLabel.Name = "renderIntervalLabel";
            this.renderIntervalLabel.Size = new System.Drawing.Size(163, 20);
            this.renderIntervalLabel.TabIndex = 5;
            this.renderIntervalLabel.Text = "Время перерисовки:";
            // 
            // AMUpDown
            // 
            this.AMUpDown.Location = new System.Drawing.Point(192, 120);
            this.AMUpDown.Margin = new System.Windows.Forms.Padding(10);
            this.AMUpDown.Name = "AMUpDown";
            this.AMUpDown.Size = new System.Drawing.Size(76, 26);
            this.AMUpDown.TabIndex = 4;
            this.AMUpDown.Value = new decimal(new int[] {
            3,
            0,
            0,
            0});
            this.AMUpDown.ValueChanged += new System.EventHandler(this.AMUpDown_ValueChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(10, 122);
            this.label10.Margin = new System.Windows.Forms.Padding(10);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(86, 20);
            this.label10.TabIndex = 3;
            this.label10.Text = "Длина AM";
            // 
            // OAUpDown
            // 
            this.OAUpDown.Location = new System.Drawing.Point(192, 40);
            this.OAUpDown.Margin = new System.Windows.Forms.Padding(10);
            this.OAUpDown.Name = "OAUpDown";
            this.OAUpDown.Size = new System.Drawing.Size(76, 26);
            this.OAUpDown.TabIndex = 2;
            this.OAUpDown.Value = new decimal(new int[] {
            5,
            0,
            0,
            0});
            this.OAUpDown.ValueChanged += new System.EventHandler(this.OAUpDown_ValueChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(10, 42);
            this.label9.Margin = new System.Windows.Forms.Padding(10);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(85, 20);
            this.label9.TabIndex = 1;
            this.label9.Text = "Длина OA";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(78, 5);
            this.label8.Margin = new System.Windows.Forms.Padding(5);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(84, 20);
            this.label8.TabIndex = 0;
            this.label8.Text = "Механизм";
            // 
            // renderIntervalTrackBar
            // 
            this.renderIntervalTrackBar.Location = new System.Drawing.Point(10, 239);
            this.renderIntervalTrackBar.Maximum = 200;
            this.renderIntervalTrackBar.Minimum = 1;
            this.renderIntervalTrackBar.Name = "renderIntervalTrackBar";
            this.renderIntervalTrackBar.Size = new System.Drawing.Size(258, 69);
            this.renderIntervalTrackBar.TabIndex = 10;
            this.renderIntervalTrackBar.Value = 25;
            this.renderIntervalTrackBar.ValueChanged += new System.EventHandler(this.renderIntervalTrackBar_ValueChanged);
            // 
            // Lab7Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1278, 544);
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
            this.Controls.Add(this.label1);
            this.Controls.Add(this.rotationComboBox);
            this.Controls.Add(this.AnT);
            this.Name = "Lab7Form";
            this.Text = "Lab7Form";
            this.Load += new System.EventHandler(this.Lab7Form_Load);
            ((System.ComponentModel.ISupportInitialize)(this.zoomTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.angleTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.zTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.yTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xTrackBar)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ABUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.AMUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.OAUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.renderIntervalTrackBar)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Tao.Platform.Windows.SimpleOpenGlControl AnT;
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
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox rotationComboBox;
        private System.Windows.Forms.Timer renderTimer;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.NumericUpDown AMUpDown;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.NumericUpDown OAUpDown;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label renderIntervalLabel;
        private System.Windows.Forms.CheckBox mPathCheckBox;
        private System.Windows.Forms.NumericUpDown ABUpDown;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TrackBar renderIntervalTrackBar;
    }
}