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
    public partial class frm_lichsumuahang : Form
    {
        public frm_lichsumuahang()
        {
            InitializeComponent();
        }

        private void frm_lichsumuahang_Load(object sender, EventArgs e)
        {
            this.IsMdiContainer = true;
        }
    }
}
