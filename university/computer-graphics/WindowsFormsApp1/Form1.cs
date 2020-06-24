using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Tao.FreeGlut;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Hide();
            var form = new Lab1Form();
            form.FormClosed += (object s, FormClosedEventArgs args) => Close();
            form.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Hide();
            var form = new Lab21Form();
            form.FormClosed += (object s, FormClosedEventArgs args) => Close();
            form.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Hide();
            var form = new Lab22Form();
            form.FormClosed += (object s, FormClosedEventArgs args) => Close();
            form.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Hide();
            var form = new Lab3Form();
            form.FormClosed += (object s, FormClosedEventArgs args) => Close();
            form.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Hide();
            var form = new Lab4Form();
            form.FormClosed += (object s, FormClosedEventArgs args) => Close();
            form.Show();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Hide();
            var form = new Lab5Form();
            form.FormClosed += (object s, FormClosedEventArgs args) => Close();
            form.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Hide();
            var form = new Lab6Form();
            form.FormClosed += (object s, FormClosedEventArgs args) => Close();
            form.Show();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            Hide();
            var form = new Lab7Form();
            form.FormClosed += (object s, FormClosedEventArgs args) => Close();
            form.Show();
        }
    }
}
