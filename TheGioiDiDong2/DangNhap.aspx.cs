
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2.Web.DangNhap
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bDangNhap_Click1(object sender, EventArgs e)
        {
            NguoiDung ND = Dao.DaoNguoiDung.getOne(tbTaiKhoan.Text, tbMatKhau.Text);
            if (ND == null)
            {
                Response.Write("<script>alert('Tài khoản hoặc mật khẩu của bạn chưa đúng!!!: ') </script>");
            }
            else
            {
                Page.Session["FullName"] = ND.FullName;
                Page.Session["UserID"] = ND.UserID;
                Page.Session["IDVaiTro"] = ND.IDVaiTro;
                Response.Redirect("default.aspx");
            }
        }
    }
}