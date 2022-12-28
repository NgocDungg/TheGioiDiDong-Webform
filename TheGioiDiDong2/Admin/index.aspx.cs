using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheGioiDiDong2.Admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["IDVaiTro"] != 2)
            {
                Response.Redirect("../default.aspx");
            }
        }

        protected void DangXuat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("../DangNhap.aspx");
        }

        protected void DangXuat_Click1(object sender, EventArgs e)
        {

        }
    }
}