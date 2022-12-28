using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheGioiDiDong2.QuanLy
{
    public partial class BannerSlideThem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("../DangNhap.aspx");
            }
        }

        protected void bSua_Click(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand(
                    "insert into BannerSlide (  Anh) values (  @Anh)", conn);
                conn.Open();

                
                cmd.Parameters.AddWithValue("@Anh", UpAnh.FileName);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("../QLBannerSlide.aspx");
            }

            String path = Server.MapPath("../SqlLoadimg/");
            UpAnh.PostedFile.SaveAs(path + UpAnh.FileName);

        }
    }
}