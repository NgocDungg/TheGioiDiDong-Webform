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

namespace TheGioiDiDong2.Admin
{
    public partial class DonHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<GioHang> list = DaoGiohang.getDonHang();
            GridView1.DataSource = list;
            GridView1.DataBind();
            if ((int)Session["IDVaiTro"] != 2)
            {
                Response.Redirect("../default.aspx");
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            string strSql = "Delete from GioHang where  IDCart = " + ID.ToString();
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
            Response.Redirect("DonHang.aspx");
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)

        {


            Response.Redirect("QuanLy/SuaSP.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            List<GioHang> listSV = DaoGiohang.getDonHang();
            GridView1.DataSource = listSV;
            GridView1.DataBind();
        }
    }
}