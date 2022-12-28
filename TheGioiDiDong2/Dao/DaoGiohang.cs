using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2.Dao
{
    public class DaoGiohang
    {

        public static GioHang TongTien(int _userid)
        {
            GioHang objND = null;

            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            string sql = "select  UserID, SUM(GiaBan * SoLuong) as TongTien from SanPham2, GioHang where GioHang.IDProduct = SanPham2.ID and UserID = '"+_userid+"' group by UserID";

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.CommandType = System.Data.CommandType.Text;

                conn.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (reader.Read())
                {
                    objND = new GioHang();
                    objND.TongTien = Convert.ToString(reader["TongTien"]);
                }
                reader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return objND;
            }
        }
        public static List<GioHang> getAll(int _userid)
        {
            List<GioHang> lstND = new List<GioHang>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "" +
                "SELECT IDCart, IDProduct, NGuoiDung.UserID, TenSP, Anh, GiaBan, SoLuong FROM SanPham2, NguoiDung, GioHang where NguoiDung.UserID = GioHang.UserID and GioHang.IDProduct = SanPham2.ID and NguoiDung.UserID = '"+ _userid + "'";
            //Định nghĩa đối tượng Connection
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                //Khởi tạo đối tượng Command
                SqlCommand sqlCommand = new SqlCommand(strSQL, sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                //Mở kết nối tới CSDL
                sqlConnection.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                GioHang objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new GioHang();
                    objSV.IDCart = Convert.ToInt32(sqlDataReader["IDCart"]);
                    objSV.IDProduct = Convert.ToInt32(sqlDataReader["IDProduct"]);
                    objSV.UserID = Convert.ToInt32(sqlDataReader["UserID"]);
                    objSV.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    objSV.GiaBan = Convert.ToInt32(sqlDataReader["GiaBan"]);
                    objSV.SoLuong = Convert.ToInt32(sqlDataReader["SoLuong"]);
                    
                    lstND.Add(objSV);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }
        }
        public static List<GioHang> getDonHang()
        {
            List<GioHang> lstND = new List<GioHang>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "" +
                "select IDCart, FullName, TenSP, GiaBan, Anh from GioHang, NguoiDung, SanPham2 where GioHang.IDProduct = SanPham2.ID and NguoiDung.UserID = GioHang.UserID";
            //Định nghĩa đối tượng Connection
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                //Khởi tạo đối tượng Command
                SqlCommand sqlCommand = new SqlCommand(strSQL, sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                //Mở kết nối tới CSDL
                sqlConnection.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                GioHang objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new GioHang();
                    objSV.IDCart = Convert.ToInt32(sqlDataReader["IDCart"]);
                    objSV.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSV.FullName = Convert.ToString(sqlDataReader["FullName"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    objSV.GiaBan = Convert.ToInt32(sqlDataReader["GiaBan"]);
                    

                    lstND.Add(objSV);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }
        }
    }
}