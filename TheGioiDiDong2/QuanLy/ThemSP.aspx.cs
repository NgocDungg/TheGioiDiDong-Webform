using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheGioiDiDong2.QuanLy
{
    public partial class ThemSP : System.Web.UI.Page
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
                    "insert into SanPham2 ( TenSP, GiaBan, Anh, AnhPreview1, AnhPreview2) values ( @TenSP,  @GiaBan, @Anh, @AnhPreview1, @AnhPreview2)", conn);
                conn.Open();
                
                cmd.Parameters.AddWithValue("@TenSP", tbTenSP.Text);
                cmd.Parameters.AddWithValue("@GiaBan", tbGiaBan.Text);

                cmd.Parameters.AddWithValue("@Anh", UpAnh.FileName);
                cmd.Parameters.AddWithValue("@AnhPreview1", UpAnh0.FileName);
                cmd.Parameters.AddWithValue("@AnhPreview2", UpAnh1.FileName);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("../Admin/SanPham.aspx");
            }
           
            String path = Server.MapPath("../SqlLoadimg/");
            UpAnh.PostedFile.SaveAs(path + UpAnh.FileName);

        }
    }
}