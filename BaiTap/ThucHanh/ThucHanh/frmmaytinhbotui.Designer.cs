namespace ThucHanh
{
    partial class frmmaytinhbotui
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
            this.txtSo1 = new System.Windows.Forms.TextBox();
            this.txtSo2 = new System.Windows.Forms.TextBox();
            this.txtKQ = new System.Windows.Forms.TextBox();
            this.btncong = new System.Windows.Forms.Button();
            this.btntru = new System.Windows.Forms.Button();
            this.btnnhan = new System.Windows.Forms.Button();
            this.btnchia = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtSo1
            // 
            this.txtSo1.Location = new System.Drawing.Point(33, 33);
            this.txtSo1.Name = "txtSo1";
            this.txtSo1.Size = new System.Drawing.Size(119, 22);
            this.txtSo1.TabIndex = 0;
            this.txtSo1.Click += new System.EventHandler(this.textBox1_Click);
            // 
            // txtSo2
            // 
            this.txtSo2.Location = new System.Drawing.Point(265, 33);
            this.txtSo2.Name = "txtSo2";
            this.txtSo2.Size = new System.Drawing.Size(122, 22);
            this.txtSo2.TabIndex = 1;
            // 
            // txtKQ
            // 
            this.txtKQ.ForeColor = System.Drawing.Color.Yellow;
            this.txtKQ.Location = new System.Drawing.Point(140, 88);
            this.txtKQ.Name = "txtKQ";
            this.txtKQ.Size = new System.Drawing.Size(140, 22);
            this.txtKQ.TabIndex = 2;
            // 
            // btncong
            // 
            this.btncong.Location = new System.Drawing.Point(61, 188);
            this.btncong.Name = "btncong";
            this.btncong.Size = new System.Drawing.Size(75, 37);
            this.btncong.TabIndex = 3;
            this.btncong.Text = "Cộng";
            this.btncong.UseVisualStyleBackColor = true;
            this.btncong.Click += new System.EventHandler(this.btncong_Click);
            // 
            // btntru
            // 
            this.btntru.Location = new System.Drawing.Point(290, 188);
            this.btntru.Name = "btntru";
            this.btntru.Size = new System.Drawing.Size(75, 37);
            this.btntru.TabIndex = 4;
            this.btntru.Text = "Trừ";
            this.btntru.UseVisualStyleBackColor = true;
            this.btntru.Click += new System.EventHandler(this.btntru_Click);
            // 
            // btnnhan
            // 
            this.btnnhan.Location = new System.Drawing.Point(61, 329);
            this.btnnhan.Name = "btnnhan";
            this.btnnhan.Size = new System.Drawing.Size(75, 40);
            this.btnnhan.TabIndex = 5;
            this.btnnhan.Text = "Nhân";
            this.btnnhan.UseVisualStyleBackColor = true;
            this.btnnhan.Click += new System.EventHandler(this.btnnhan_Click);
            // 
            // btnchia
            // 
            this.btnchia.Location = new System.Drawing.Point(290, 329);
            this.btnchia.Name = "btnchia";
            this.btnchia.Size = new System.Drawing.Size(75, 40);
            this.btnchia.TabIndex = 6;
            this.btnchia.Text = "Chia";
            this.btnchia.UseVisualStyleBackColor = true;
            this.btnchia.Click += new System.EventHandler(this.btnchia_Click);
            // 
            // frmmaytinhbotui
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(487, 502);
            this.Controls.Add(this.btnchia);
            this.Controls.Add(this.btnnhan);
            this.Controls.Add(this.btntru);
            this.Controls.Add(this.btncong);
            this.Controls.Add(this.txtKQ);
            this.Controls.Add(this.txtSo2);
            this.Controls.Add(this.txtSo1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmmaytinhbotui";
            this.Text = "Máy tính bỏ túi";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtSo1;
        private System.Windows.Forms.TextBox txtSo2;
        private System.Windows.Forms.TextBox txtKQ;
        private System.Windows.Forms.Button btncong;
        private System.Windows.Forms.Button btntru;
        private System.Windows.Forms.Button btnnhan;
        private System.Windows.Forms.Button btnchia;
    }
}