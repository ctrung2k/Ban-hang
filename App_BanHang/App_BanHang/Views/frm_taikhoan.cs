using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace App_BanHang.Views
{
    public partial class frm_taikhoan : Form
    {
        public frm_taikhoan()
        {
            InitializeComponent();
        }
        //if islogin = true then
        //frmmain.show()
        //me.hide()


        //frmlogin.show()
        //me.hide()

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //frm_giohang test = NewMethod();
            //test.MdiParent = this;
            //test.Show();
        }

        private static frm_giohang NewMethod()
        {
            return new frm_giohang();
        }

        private void frm_taikhoan_Load(object sender, EventArgs e)
        {
            //this.IsMdiContainer = true;
        }

        private void bt_doimatkhau_Click(object sender, EventArgs e)
        {

        }

        private void bt_giohang_Click(object sender, EventArgs e)
        {
            frm_taikhoan abcd = new frm_taikhoan();
            abcd.MdiParent = this;
            this.Show();
        }
    }
}
