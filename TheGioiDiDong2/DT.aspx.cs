using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheGioiDiDong2.Dao;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2.Web.DienThoai
{
    public partial class DT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //    List<SanPham> lstND = DaoSanPham.getAll();
            //    DataList1.DataSource = lstND;
            //    DataList1.DataBind();
            string ss = (string)Session["FullName"];
            if (Session["UserID"] == null)
            {
                lbSession.Text = "Đăng nhập";
            }
            else
            {
                lbSession.Text = "Xin chào: " + ss + "";
            }

            //get 
            List<Recommend> lst = Dao.DaoRecommend.getAll();
            dtlAll.DataSource = lst;
            DataBind();
        }
        protected void GioHang_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
            else
            {
                Response.Redirect("GioHang.aspx");
            }
        }
        protected void bDienThoai_Click(object sender, EventArgs e)
        {
            
        }
        protected void bQly_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null && Session["IDVaiTro"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
            else if ((int)Session["IDVaiTro"] == 2)
            {
                Response.Redirect("Admin/index.aspx");
            }
            else
            {
                Session.Abandon();
                Session.Clear();
                Response.Cookies.Clear();
                Response.Redirect("DangNhap.aspx");
            }
        }
    }
}