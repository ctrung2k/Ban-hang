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
    public partial class frm_quanlytaikhoan : Form
    {
        public frm_quanlytaikhoan()
        {
            InitializeComponent();
        }

        private void cbb_year_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbb_year.IntegralHeight = false;
            cbb_year.Height = 10;
            //int s;
            //for(int i = 1980; i < 2020; i++ )
            //{
            //    arr = array("i");

                
            //}
        }

        private void frm_quanlytaikhoan_Load(object sender, EventArgs e)
        {
            this.IsMdiContainer = true;
        }
    }
}
