using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheGioiDiDong2.Dao;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2
{
    public partial class QuanLyKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<NguoiDung> load = Dao.DaoNguoiDung.getAllKH();
            GridView1.DataSource = load;
            GridView1.DataBind();
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangKy.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            string strSql = "Delete from NguoiDung where  UserID = " + ID.ToString();
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
            Response.Redirect("QuanLyKH.aspx");
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)

        {


            Response.Redirect("QuanLy/SuaKH.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            List<NguoiDung> listSV = DaoNguoiDung.getAllKH();
            GridView1.DataSource = listSV;
            GridView1.DataBind();
        }

        protected void bSearch_Click(object sender, EventArgs e)
        {
            

        }

        protected void bLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("DangNhap.aspx");
        }
    }
}