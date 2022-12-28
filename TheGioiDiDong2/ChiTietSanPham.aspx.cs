using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int pID = Convert.ToInt32(Page.Request.QueryString["id"]);
            if (!Page.IsPostBack)
            {
                BindData(Convert.ToString(pID));

            }
            string ss = (string)Session["FullName"];
            if (Session["UserID"] == null)
            {
                lbSession.Text = "Đăng nhập";
            }
            else
            {
                lbSession.Text = "Xin chào: " + ss + "";
            }
        }
        private void BindData(string pID)
        {

            SanPham sp = Dao.DaoSanPham.getOne(pID);
            
            
                lbTenSP.Text = sp.TenSP;
                lbTenSP2.Text = sp.TenSP;
                lbGia.Text = Convert.ToString(sp.Giaban);
                preview.ImageUrl = "~/SqlLoadimg/" + sp.AnhPreview1;
                Image1.ImageUrl = "~/SqlLoadimg/" + sp.AnhPreview2;

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

        protected void bMuaNgay_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
            else
            {
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                int pID = Convert.ToInt32(Page.Request.QueryString["id"]);
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand(
                        "insert into GioHang ( IDProduct, UserID,SoLuong ) values ( @IDProduct,  @UserID, @SoLuong)", conn);
                    conn.Open();
                    cmd.Parameters.AddWithValue("@IDProduct", pID);
                    cmd.Parameters.AddWithValue("UserID", Session["UserID"]);
                    cmd.Parameters.AddWithValue("@SoLuong", 1);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("GioHang.aspx");
                }
            }
        }
    }
}