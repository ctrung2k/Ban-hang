namespace App_BanHang.Views
{
    partial class frm_dangnhap
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
            this.tb_matkhau = new System.Windows.Forms.TextBox();
            this.lb_taikhoan = new System.Windows.Forms.Label();
            this.lb_dangky = new System.Windows.Forms.Label();
            this.lb_matkhau = new System.Windows.Forms.Label();
            this.lb_doimk = new System.Windows.Forms.Label();
            this.bt_dangnhap = new System.Windows.Forms.Button();
            this.tb_taikhoan = new System.Windows.Forms.TextBox();
            this.lb_title = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // tb_matkhau
            // 
            this.tb_matkhau.Location = new System.Drawing.Point(212, 170);
            this.tb_matkhau.Name = "tb_matkhau";
            this.tb_matkhau.Size = new System.Drawing.Size(185, 20);
            this.tb_matkhau.TabIndex = 2;
            // 
            // lb_taikhoan
            // 
            this.lb_taikhoan.AutoSize = true;
            this.lb_taikhoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_taikhoan.Location = new System.Drawing.Point(207, 85);
            this.lb_taikhoan.Name = "lb_taikhoan";
            this.lb_taikhoan.Size = new System.Drawing.Size(98, 24);
            this.lb_taikhoan.TabIndex = 22;
            this.lb_taikhoan.Text = "Tài khoản:";
            // 
            // lb_dangky
            // 
            this.lb_dangky.AutoSize = true;
            this.lb_dangky.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, ((System.Drawing.FontStyle)(((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic) 
                | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_dangky.Location = new System.Drawing.Point(370, 279);
            this.lb_dangky.Name = "lb_dangky";
            this.lb_dangky.Size = new System.Drawing.Size(64, 15);
            this.lb_dangky.TabIndex = 5;
            this.lb_dangky.Text = "*Đăng ký";
            this.lb_dangky.Click += new System.EventHandler(this.lb_dangky_Click);
            // 
            // lb_matkhau
            // 
            this.lb_matkhau.AutoSize = true;
            this.lb_matkhau.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_matkhau.Location = new System.Drawing.Point(207, 143);
            this.lb_matkhau.Name = "lb_matkhau";
            this.lb_matkhau.Size = new System.Drawing.Size(91, 24);
            this.lb_matkhau.TabIndex = 20;
            this.lb_matkhau.Text = "Mật khẩu:";
            // 
            // lb_doimk
            // 
            this.lb_doimk.AutoSize = true;
            this.lb_doimk.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, ((System.Drawing.FontStyle)(((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic) 
                | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_doimk.Location = new System.Drawing.Point(152, 279);
            this.lb_doimk.Name = "lb_doimk";
            this.lb_doimk.Size = new System.Drawing.Size(118, 15);
            this.lb_doimk.TabIndex = 4;
            this.lb_doimk.Text = "*Quên mật khẩu?";
            // 
            // bt_dangnhap
            // 
            this.bt_dangnhap.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_dangnhap.Location = new System.Drawing.Point(252, 212);
            this.bt_dangnhap.Name = "bt_dangnhap";
            this.bt_dangnhap.Size = new System.Drawing.Size(105, 33);
            this.bt_dangnhap.TabIndex = 3;
            this.bt_dangnhap.Text = "ĐĂNG NHẬP";
            this.bt_dangnhap.UseVisualStyleBackColor = true;
            this.bt_dangnhap.Click += new System.EventHandler(this.bt_dangnhap_Click);
            // 
            // tb_taikhoan
            // 
            this.tb_taikhoan.Location = new System.Drawing.Point(211, 117);
            this.tb_taikhoan.Name = "tb_taikhoan";
            this.tb_taikhoan.Size = new System.Drawing.Size(185, 20);
            this.tb_taikhoan.TabIndex = 1;
            // 
            // lb_title
            // 
            this.lb_title.AutoSize = true;
            this.lb_title.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_title.Location = new System.Drawing.Point(225, 28);
            this.lb_title.Name = "lb_title";
            this.lb_title.Size = new System.Drawing.Size(181, 31);
            this.lb_title.TabIndex = 0;
            this.lb_title.Text = "3T\'s Grocery";
            // 
            // frm_dangnhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(622, 351);
            this.Controls.Add(this.tb_matkhau);
            this.Controls.Add(this.lb_taikhoan);
            this.Controls.Add(this.lb_dangky);
            this.Controls.Add(this.lb_matkhau);
            this.Controls.Add(this.lb_doimk);
            this.Controls.Add(this.bt_dangnhap);
            this.Controls.Add(this.tb_taikhoan);
            this.Controls.Add(this.lb_title);
            this.Name = "frm_dangnhap";
            this.Text = "frm_dangnhap";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tb_matkhau;
        private System.Windows.Forms.Label lb_taikhoan;
        private System.Windows.Forms.Label lb_dangky;
        private System.Windows.Forms.Label lb_matkhau;
        private System.Windows.Forms.Label lb_doimk;
        private System.Windows.Forms.Button bt_dangnhap;
        private System.Windows.Forms.TextBox tb_taikhoan;
        private System.Windows.Forms.Label lb_title;
    }
}