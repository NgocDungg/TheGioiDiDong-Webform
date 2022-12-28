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
    public partial class ThemND : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int pID =Convert.ToInt32 (Page.Request.QueryString["id"]);
            if (!Page.IsPostBack)
            {
                BindData(Convert.ToString(pID));

            }
            
            //Response.End();
            tbID.Text = pID.ToString();
            //if (Session["UserID"] == null)
            //{
            //    Response.Redirect("../DangNhap.aspx");
            //}

        }
        private void BindData(string pID)
        {
            
            SanPham sp = Dao.DaoSanPham.getOne(pID);
            tbGiaBan.Text = Convert.ToString(sp.Giaban);
            tbTenSP.Text = Convert.ToString(sp.TenSP);
            //ImageUrl = '<%# "../../SqlLoadimg/" + Eval("Anh") %>'
            imgpr.ImageUrl = "../../SqlLoadimg/" + Convert.ToString(sp.Anh);
            imgpr2.ImageUrl = "../../SqlLoadimg/" + Convert.ToString(sp.AnhPreview1);
            imgpr3.ImageUrl = "../../SqlLoadimg/" + Convert.ToString(sp.AnhPreview2);
            

        }
        protected void bSua_Click(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand
                    ("update SanPham2 set TenSP = @TenSP, GiaBan = @GiaBan, Anh= @Anh, AnhPreview1 = @PV1, AnhPreview2 = @PV2 where ID = @ID", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@ID", tbID.Text);
                cmd.Parameters.AddWithValue("@TenSP", tbTenSP.Text);
                cmd.Parameters.AddWithValue("@GiaBan", tbGiaBan.Text);
                cmd.Parameters.AddWithValue("@Anh", UpAnh1.FileName);
                cmd.Parameters.AddWithValue("@PV1", UpAnh2.FileName);
                cmd.Parameters.AddWithValue("@PV2", UpAnh3.FileName);
                
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("../Admin/SanPham.aspx");
            }
        }
    }
}