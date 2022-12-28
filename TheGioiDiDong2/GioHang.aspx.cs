using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2
{
    public partial class GioHangg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ss = (string)Session["FullName"];
            if (Session["UserID"] == null)
            {
                lbSession.Text = "Đăng nhập";
            }
            else
            {
                lbSession.Text = "Xin chào: " + ss + "";
            }
            if (Session["UserID"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }

            int uID = (int)Session["UserID"];
            List<GioHang> list = Dao.DaoGiohang.getAll(uID);
            dtlDetaiBuy.DataSource = list;
            DataBind();

            GioHang tt = Dao.DaoGiohang.TongTien((int)Session["UserID"]);
            if(tt != null)
            {
                BindTongTien();
            }
            
            
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

        protected void bDatHang_Click(object sender, EventArgs e)
        {
            string strSql = "Delete from GioHang where  UserID = " + Session["UserID"];
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand(strSql, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                sqlConnection.Open();
                cmd.ExecuteNonQuery();
                sqlConnection.Close();
                sqlConnection.Dispose();
            }
            
            Response.Redirect("GioHang.aspx");
            //Response.Write("<script>alert('Đặt hàng thành công!!') </script>");
            
        }

        protected void BindTongTien()
        {
            GioHang tt = Dao.DaoGiohang.TongTien((int)Session["UserID"]);
            TongTien.Text = tt.TongTien;
        }
       

        
    }
}