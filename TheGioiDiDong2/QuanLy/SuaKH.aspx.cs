using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2.QuanLy
{
    public partial class SuaKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int pID = Convert.ToInt32(Page.Request.QueryString["id"]);
            if (!Page.IsPostBack)
            {
                BindData(Convert.ToString(pID));

            }
            if (Session["UserID"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
        }
        private void BindData(string pID)
        {

            NguoiDung sp = Dao.DaoNguoiDung.getOneid(pID);
            tbUserID.Text = Convert.ToString(sp.UserID);
            tbTaiKhoan.Text = sp.TaiKhoan;
            tbMatKhau.Text = sp.MatKhau;
            tbFullName.Text = sp.FullName;
            


        }

        protected void bSua_Click(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand
                    ("update NguoiDung set TaiKhoan = @TaiKhoan, MatKhau = @MatKhau, FullName= @FullName where UserID = @UserID", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@UserID", tbUserID.Text);
                cmd.Parameters.AddWithValue("@TaiKhoan", tbTaiKhoan.Text);
                cmd.Parameters.AddWithValue("@MatKhau", tbMatKhau.Text);
                cmd.Parameters.AddWithValue("@FullName", tbFullName.Text);
                

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("../Admin/KhachHang.aspx");
            }
        }
    }
}