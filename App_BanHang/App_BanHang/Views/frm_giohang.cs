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
    public partial class frm_giohang : Form
    {
        public frm_giohang()
        {
            InitializeComponent();
        }

        private void bt_dangnhap_Click(object sender, EventArgs e)
        {
            frm_taikhoan i = new frm_taikhoan();
            i.MdiParent = this;
            i.Show();
        }

        private void frm_giohang_Load(object sender, EventArgs e)
        {
            //this.IsMdiContainer = true;
        }
    }
}
