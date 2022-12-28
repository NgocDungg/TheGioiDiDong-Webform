using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2.Web.TrangChu
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ss = (string)Session["FullName"];
            if (Session["UserID"] == null)
            {
                lbSession.Text = "Đăng nhập" ;
            }
            else
            {
                lbSession.Text = "Xin chào: "+ss+"";
            }

            //get recommend product
           
            List<SanPham> lst = Dao.DaoSanPham.getTop15();
            dtlRecommend.DataSource = lst;
            DataBind();
            //end get recommend product

            //get SliderF
            List<BannerSlide> lst1 = Dao.DaoBannerSlide.getPart1();
            dtlSliderFp1.DataSource = lst1;
            DataBind();
            List<BannerSlide> lst2 = Dao.DaoBannerSlide.getPart2();
            dtlSliderFp2.DataSource = lst2;
            DataBind();
            // end get SliderF with 2p

            //luckywheel
            List<Recommend> lw1 = Dao.DaoRecommend.getPart1();
            dtlLuckyWheel1.DataSource = lw1;
            DataBind();

            List<Recommend> lw2 = Dao.DaoRecommend.getPart2();
            dtlLuckyWheel2.DataSource = lw2;
            DataBind();
            //end lucky wheel

            //get vivo week
            List<VivoWeek> vivo1 = Dao.DaoVivoWeek.getPart1();
            dtlVivoWeek1.DataSource = vivo1;
            DataBind();
            List<VivoWeek> vivo2 = Dao.DaoVivoWeek.getPart2();
            dtlVivoWeek2.DataSource = vivo2;
            DataBind();
            // end get vivo week
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
        //protected void bSelectPR_Click(object sender, EventArgs e)
        //{

        //    if (Session["UserID"] == null)
        //    {
        //        Response.Redirect("DangNhap.aspx");
        //    }
        //    else
        //    {
        //        Response.Redirect("ChiTietSanPham.aspx?id={0}");
        //    }
        //}
    }
}