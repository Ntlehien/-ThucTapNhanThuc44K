using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calculator
{
    public partial class frmQuocThien : Form
    {
        String a, b;
        Double KQ, c, d;
        int pheptinh;

        public frmQuocThien()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
        
        }

        private void bt1_Click(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + bt1.Text;
        }

        private void bt2_Click(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + bt2.Text;
        }

        private void bt3_Click(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + bt3.Text;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + button4.Text;
        }

        private void button6_Click_1(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + button6.Text;

        }
        private void button5_Click(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + button5.Text;
        }



        private void button7_Click(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + button7.Text;
        }

        private void button9_Click(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + button9.Text;
        }

        private void button8_Click(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + button8.Text;
        }

        private void bt0_Click(object sender, EventArgs e)
        {
            txtHT.Text = txtHT.Text + bt0.Text;
        }

        private void btCong_Click(object sender, EventArgs e)
        {
            a = txtHT.Text;
            c = Convert.ToInt32(a);
            txtHT.Text = "";
            pheptinh = 1;

        }

        private void btTru_Click(object sender, EventArgs e)
        {
            a = txtHT.Text;
            c = Convert.ToInt32(a);
            txtHT.Text = "";
            pheptinh = 2;

        }

        private void btNhan_Click(object sender, EventArgs e)
        {
            a = txtHT.Text;
            c = Convert.ToDouble(a);
            txtHT.Text = "";
            pheptinh = 3;

        }

        private void frmQuocThien_FormClosing(object sender, FormClosingEventArgs e)
        {
            MessageBox.Show("See you next time!!","Goodbye");
        }

        private void btChia_Click(object sender, EventArgs e)
        {
            a = txtHT.Text;
            c = Convert.ToDouble(a);
            txtHT.Text = "";
            pheptinh = 4;

        }

        private void btBang_Click(object sender, EventArgs e)
        {

            b = txtHT.Text;
            d = Convert.ToDouble(b);
            switch (pheptinh)
            {
                case 1:
                    KQ = c + d;
                    break;
                case 2:
                    KQ = c - d;
                    break;
                case 3:
                    KQ = c * d;
                    break;
                case 4:
                    KQ = c / d;
                    break;


            }
            txtHT.Text = KQ.ToString();

        }

        private void btXoa_Click(object sender, EventArgs e)
        {
            txtHT.Text = "";
        }


     

    }
}
