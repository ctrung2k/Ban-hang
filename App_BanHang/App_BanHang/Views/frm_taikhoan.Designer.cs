namespace App_BanHang.Views
{
    partial class frm_taikhoan
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
            this.lb_name = new System.Windows.Forms.Label();
            this.llb_dangxuat = new System.Windows.Forms.LinkLabel();
            this.ptb_image = new System.Windows.Forms.PictureBox();
            this.lb_email = new System.Windows.Forms.Label();
            this.lb_diemtl = new System.Windows.Forms.Label();
            this.lb_history = new System.Windows.Forms.Label();
            this.lb_spyeuthich = new System.Windows.Forms.Label();
            this.bt_suathongtin = new System.Windows.Forms.Button();
            this.bt_doimatkhau = new System.Windows.Forms.Button();
            this.lb_danhgia = new System.Windows.Forms.Label();
            this.lb_title = new System.Windows.Forms.Label();
            this.bt_trangchu = new System.Windows.Forms.Button();
            this.bt_taikhoan = new System.Windows.Forms.Button();
            this.bt_danhmuc = new System.Windows.Forms.Button();
            this.bt_giohang = new System.Windows.Forms.Button();
            this.llb_danhgia = new System.Windows.Forms.LinkLabel();
            this.llb_history = new System.Windows.Forms.LinkLabel();
            this.llb_spyeuthich = new System.Windows.Forms.LinkLabel();
            ((System.ComponentModel.ISupportInitialize)(this.ptb_image)).BeginInit();
            this.SuspendLayout();
            // 
            // lb_name
            // 
            this.lb_name.AutoSize = true;
            this.lb_name.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_name.Location = new System.Drawing.Point(157, 46);
            this.lb_name.Name = "lb_name";
            this.lb_name.Size = new System.Drawing.Size(35, 16);
            this.lb_name.TabIndex = 0;
            this.lb_name.Text = "Tên:";
            // 
            // llb_dangxuat
            // 
            this.llb_dangxuat.AutoSize = true;
            this.llb_dangxuat.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.llb_dangxuat.LinkColor = System.Drawing.Color.Black;
            this.llb_dangxuat.Location = new System.Drawing.Point(462, 13);
            this.llb_dangxuat.Name = "llb_dangxuat";
            this.llb_dangxuat.Size = new System.Drawing.Size(91, 20);
            this.llb_dangxuat.TabIndex = 1;
            this.llb_dangxuat.TabStop = true;
            this.llb_dangxuat.Text = "Đăng xuất";
            this.llb_dangxuat.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLabel1_LinkClicked);
            // 
            // ptb_image
            // 
            this.ptb_image.Location = new System.Drawing.Point(31, 46);
            this.ptb_image.Name = "ptb_image";
            this.ptb_image.Size = new System.Drawing.Size(100, 80);
            this.ptb_image.TabIndex = 2;
            this.ptb_image.TabStop = false;
            // 
            // lb_email
            // 
            this.lb_email.AutoSize = true;
            this.lb_email.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_email.Location = new System.Drawing.Point(157, 80);
            this.lb_email.Name = "lb_email";
            this.lb_email.Size = new System.Drawing.Size(45, 16);
            this.lb_email.TabIndex = 3;
            this.lb_email.Text = "Email:";
            // 
            // lb_diemtl
            // 
            this.lb_diemtl.AutoSize = true;
            this.lb_diemtl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_diemtl.Location = new System.Drawing.Point(157, 113);
            this.lb_diemtl.Name = "lb_diemtl";
            this.lb_diemtl.Size = new System.Drawing.Size(85, 16);
            this.lb_diemtl.TabIndex = 4;
            this.lb_diemtl.Text = "Điểm tích lũy:";
            // 
            // lb_history
            // 
            this.lb_history.AutoSize = true;
            this.lb_history.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_history.Location = new System.Drawing.Point(68, 236);
            this.lb_history.Name = "lb_history";
            this.lb_history.Size = new System.Drawing.Size(128, 18);
            this.lb_history.TabIndex = 5;
            this.lb_history.Text = "Lịch sử mua hàng:";
            // 
            // lb_spyeuthich
            // 
            this.lb_spyeuthich.AutoSize = true;
            this.lb_spyeuthich.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_spyeuthich.Location = new System.Drawing.Point(68, 294);
            this.lb_spyeuthich.Name = "lb_spyeuthich";
            this.lb_spyeuthich.Size = new System.Drawing.Size(141, 18);
            this.lb_spyeuthich.TabIndex = 6;
            this.lb_spyeuthich.Text = "Sản phẩm yêu thích:";
            // 
            // bt_suathongtin
            // 
            this.bt_suathongtin.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_suathongtin.Location = new System.Drawing.Point(66, 155);
            this.bt_suathongtin.Name = "bt_suathongtin";
            this.bt_suathongtin.Size = new System.Drawing.Size(176, 45);
            this.bt_suathongtin.TabIndex = 2;
            this.bt_suathongtin.Text = "Sửa thông tin tài khoản";
            this.bt_suathongtin.UseVisualStyleBackColor = true;
            // 
            // bt_doimatkhau
            // 
            this.bt_doimatkhau.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_doimatkhau.Location = new System.Drawing.Point(343, 155);
            this.bt_doimatkhau.Name = "bt_doimatkhau";
            this.bt_doimatkhau.Size = new System.Drawing.Size(105, 45);
            this.bt_doimatkhau.TabIndex = 3;
            this.bt_doimatkhau.Text = "Đổi mật khẩu";
            this.bt_doimatkhau.UseVisualStyleBackColor = true;
            this.bt_doimatkhau.Click += new System.EventHandler(this.bt_doimatkhau_Click);
            // 
            // lb_danhgia
            // 
            this.lb_danhgia.AutoSize = true;
            this.lb_danhgia.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_danhgia.Location = new System.Drawing.Point(68, 351);
            this.lb_danhgia.Name = "lb_danhgia";
            this.lb_danhgia.Size = new System.Drawing.Size(70, 18);
            this.lb_danhgia.TabIndex = 9;
            this.lb_danhgia.Text = "Đánh giá:";
            // 
            // lb_title
            // 
            this.lb_title.AutoSize = true;
            this.lb_title.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_title.Location = new System.Drawing.Point(209, 9);
            this.lb_title.Name = "lb_title";
            this.lb_title.Size = new System.Drawing.Size(121, 24);
            this.lb_title.TabIndex = 10;
            this.lb_title.Text = "TÀI KHOẢN";
            // 
            // bt_trangchu
            // 
            this.bt_trangchu.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_trangchu.Location = new System.Drawing.Point(0, 416);
            this.bt_trangchu.Name = "bt_trangchu";
            this.bt_trangchu.Size = new System.Drawing.Size(145, 71);
            this.bt_trangchu.TabIndex = 7;
            this.bt_trangchu.Text = "TRANG CHỦ";
            this.bt_trangchu.UseVisualStyleBackColor = true;
            // 
            // bt_taikhoan
            // 
            this.bt_taikhoan.Enabled = false;
            this.bt_taikhoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_taikhoan.Location = new System.Drawing.Point(420, 416);
            this.bt_taikhoan.Name = "bt_taikhoan";
            this.bt_taikhoan.Size = new System.Drawing.Size(145, 71);
            this.bt_taikhoan.TabIndex = 10;
            this.bt_taikhoan.Text = "TÀI KHOẢN";
            this.bt_taikhoan.UseVisualStyleBackColor = true;
            // 
            // bt_danhmuc
            // 
            this.bt_danhmuc.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_danhmuc.Location = new System.Drawing.Point(282, 416);
            this.bt_danhmuc.Name = "bt_danhmuc";
            this.bt_danhmuc.Size = new System.Drawing.Size(145, 71);
            this.bt_danhmuc.TabIndex = 9;
            this.bt_danhmuc.Text = "DANH MỤC";
            this.bt_danhmuc.UseVisualStyleBackColor = true;
            // 
            // bt_giohang
            // 
            this.bt_giohang.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_giohang.Location = new System.Drawing.Point(140, 416);
            this.bt_giohang.Name = "bt_giohang";
            this.bt_giohang.Size = new System.Drawing.Size(145, 76);
            this.bt_giohang.TabIndex = 8;
            this.bt_giohang.Text = "GIỎ HÀNG";
            this.bt_giohang.UseVisualStyleBackColor = true;
            this.bt_giohang.Click += new System.EventHandler(this.bt_giohang_Click);
            // 
            // llb_danhgia
            // 
            this.llb_danhgia.AutoSize = true;
            this.llb_danhgia.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.llb_danhgia.LinkColor = System.Drawing.Color.Black;
            this.llb_danhgia.Location = new System.Drawing.Point(244, 349);
            this.llb_danhgia.Name = "llb_danhgia";
            this.llb_danhgia.Size = new System.Drawing.Size(97, 18);
            this.llb_danhgia.TabIndex = 6;
            this.llb_danhgia.TabStop = true;
            this.llb_danhgia.Text = "Xem chi tiết";
            // 
            // llb_history
            // 
            this.llb_history.AutoSize = true;
            this.llb_history.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.llb_history.LinkColor = System.Drawing.Color.Black;
            this.llb_history.Location = new System.Drawing.Point(244, 236);
            this.llb_history.Name = "llb_history";
            this.llb_history.Size = new System.Drawing.Size(97, 18);
            this.llb_history.TabIndex = 4;
            this.llb_history.TabStop = true;
            this.llb_history.Text = "Xem chi tiết";
            // 
            // llb_spyeuthich
            // 
            this.llb_spyeuthich.AutoSize = true;
            this.llb_spyeuthich.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.llb_spyeuthich.LinkColor = System.Drawing.Color.Black;
            this.llb_spyeuthich.Location = new System.Drawing.Point(244, 292);
            this.llb_spyeuthich.Name = "llb_spyeuthich";
            this.llb_spyeuthich.Size = new System.Drawing.Size(97, 18);
            this.llb_spyeuthich.TabIndex = 5;
            this.llb_spyeuthich.TabStop = true;
            this.llb_spyeuthich.Text = "Xem chi tiết";
            // 
            // frm_taikhoan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(565, 486);
            this.Controls.Add(this.llb_spyeuthich);
            this.Controls.Add(this.llb_history);
            this.Controls.Add(this.llb_danhgia);
            this.Controls.Add(this.bt_giohang);
            this.Controls.Add(this.bt_danhmuc);
            this.Controls.Add(this.bt_taikhoan);
            this.Controls.Add(this.bt_trangchu);
            this.Controls.Add(this.lb_title);
            this.Controls.Add(this.lb_danhgia);
            this.Controls.Add(this.bt_doimatkhau);
            this.Controls.Add(this.bt_suathongtin);
            this.Controls.Add(this.lb_spyeuthich);
            this.Controls.Add(this.lb_history);
            this.Controls.Add(this.lb_diemtl);
            this.Controls.Add(this.lb_email);
            this.Controls.Add(this.ptb_image);
            this.Controls.Add(this.llb_dangxuat);
            this.Controls.Add(this.lb_name);
            this.Name = "frm_taikhoan";
            this.Text = "frm_taikhoan";
            this.Load += new System.EventHandler(this.frm_taikhoan_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ptb_image)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lb_name;
        private System.Windows.Forms.LinkLabel llb_dangxuat;
        private System.Windows.Forms.PictureBox ptb_image;
        private System.Windows.Forms.Label lb_email;
        private System.Windows.Forms.Label lb_diemtl;
        private System.Windows.Forms.Label lb_history;
        private System.Windows.Forms.Label lb_spyeuthich;
        private System.Windows.Forms.Button bt_suathongtin;
        private System.Windows.Forms.Button bt_doimatkhau;
        private System.Windows.Forms.Label lb_danhgia;
        private System.Windows.Forms.Label lb_title;
        private System.Windows.Forms.Button bt_trangchu;
        private System.Windows.Forms.Button bt_taikhoan;
        private System.Windows.Forms.Button bt_danhmuc;
        private System.Windows.Forms.Button bt_giohang;
        private System.Windows.Forms.LinkLabel llb_danhgia;
        private System.Windows.Forms.LinkLabel llb_history;
        private System.Windows.Forms.LinkLabel llb_spyeuthich;
    }
}