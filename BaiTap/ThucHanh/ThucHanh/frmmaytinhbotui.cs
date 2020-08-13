using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ThucHanh
{
    public partial class frmmaytinhbotui : Form
    {
        public frmmaytinhbotui()
        {
            InitializeComponent();
        }

        private void textBox1_Click(object sender, EventArgs e)
        {

        }

        private void btncong_Click(object sender, EventArgs e)
        {
            //lay gia tri So1
            string sSo1 = txtSo1.Text;
            Decimal dSo1 = Convert.ToDecimal(sSo1);

            //lay gia tri So2
            string sSo2 = txtSo2.Text;
            Decimal dSo2 = Convert.ToDecimal(sSo2);
            //cong
            Decimal dKQ = dSo1 + dSo2;

            //hien thi ket qua
            txtKQ.Text = dKQ.ToString();
        }

        private void btntru_Click(object sender, EventArgs e)
        {

            //lay gia tri So1
            string sSo1 = txtSo1.Text;
            Decimal dSo1 = Convert.ToDecimal(sSo1);

            //lay gia tri So2
            string sSo2 = txtSo2.Text;
            Decimal dSo2 = Convert.ToDecimal(sSo2);
            //tru
            Decimal dKQ = dSo1 - dSo2;

            //hien thi ket qua
            txtKQ.Text = dKQ.ToString();
        }

        private void btnnhan_Click(object sender, EventArgs e)
        {
            //lay gia tri So1
            string sSo1 = txtSo1.Text;
            Decimal dSo1 = Convert.ToDecimal(sSo1);

            //lay gia tri So2
            string sSo2 = txtSo2.Text;
            Decimal dSo2 = Convert.ToDecimal(sSo2);
            //nhan
            Decimal dKQ = dSo1 * dSo2;

            //hien thi ket qua
            txtKQ.Text = dKQ.ToString();
        }

        private void btnchia_Click(object sender, EventArgs e)
        {
            //lay gia tri So1
            string sSo1 = txtSo1.Text;
            Decimal dSo1 = Convert.ToDecimal(sSo1);

            //lay gia tri So2
            string sSo2 = txtSo2.Text;
            Decimal dSo2 = Convert.ToDecimal(sSo2);
            //chia
            Decimal dKQ = dSo1 / dSo2;

            //hien thi ket qua
            txtKQ.Text = dKQ.ToString();

        }
    }
}
