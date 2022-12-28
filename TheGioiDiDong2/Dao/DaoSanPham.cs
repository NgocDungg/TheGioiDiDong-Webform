using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2.Dao
{
    public class DaoSanPham
    {
        public static List<SanPham> getTop15()
        {
            List<SanPham> lstND = new List<SanPham>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            //string strSQL = "SELECT ID, TenSP, GiaBan, Anh, Anh1, Anh2  FROM SanPham2, AnhPreview where SanPham2.AnhPreviewID = AnhPreview.AnhPreviewID";
            string strSQL = "SELECT TOP 15 ID, TenSP, GiaBan, Anh, AnhPreview1, AnhPreview2  FROM SanPham2";
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
                SanPham objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new SanPham();
                    objSV.ID = Convert.ToInt32(sqlDataReader["ID"]);
                    objSV.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSV.Giaban = Convert.ToInt32(sqlDataReader["Giaban"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    objSV.AnhPreview1 = Convert.ToString(sqlDataReader["AnhPreview1"]);
                    objSV.AnhPreview2 = Convert.ToString(sqlDataReader["AnhPreview2"]);
                    lstND.Add(objSV);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }
        }

        public static SanPham getOne(string _id)
        {
            SanPham objND = null;

            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            string sql = "select ID, TenSp, GiaBan, Anh, AnhPreview1, AnhPreview2 from [SanPham2] where ID = '"+_id+"'";

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.CommandType = System.Data.CommandType.Text;

                conn.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (reader.Read())
                {
                    objND = new SanPham();
                    objND.ID = Convert.ToInt32(reader["ID"]);
                    objND.TenSP = Convert.ToString(reader["TenSP"]);
                    objND.Giaban = Convert.ToInt32(reader["Giaban"]);
                    objND.Anh = Convert.ToString(reader["Anh"]);
                    objND.AnhPreview1 = Convert.ToString(reader["AnhPreview1"]);
                    objND.AnhPreview2 = Convert.ToString(reader["AnhPreview2"]);
                }
                reader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return objND;
            }
        }
        public static List<SanPham>getByID( string _id)
        {
            List<SanPham> lstND = new List<SanPham>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT ID, TenSP, GiaBan, Anh FROM SanPham2 where ID = '"+_id+"'";
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
                SanPham objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new SanPham();
                    objSV.ID = Convert.ToInt32(sqlDataReader["ID"]);
                    objSV.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    
                    objSV.Giaban = Convert.ToInt32(sqlDataReader["Giaban"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    lstND.Add(objSV);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }
        }
        public static List<SanPham> getAll()
        {
            List<SanPham> lstND = new List<SanPham>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            //string strSQL = "SELECT ID, TenSP, GiaBan, Anh, Anh1, Anh2  FROM SanPham2, AnhPreview where SanPham2.AnhPreviewID = AnhPreview.AnhPreviewID";
            string strSQL = "SELECT ID, TenSP, GiaBan, Anh, AnhPreview1, AnhPreview2  FROM SanPham2";
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
                SanPham objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new SanPham();
                    objSV.ID = Convert.ToInt32(sqlDataReader["ID"]);
                    objSV.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSV.Giaban = Convert.ToInt32(sqlDataReader["Giaban"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    objSV.AnhPreview1 = Convert.ToString(sqlDataReader["AnhPreview1"]);
                    objSV.AnhPreview2 = Convert.ToString(sqlDataReader["AnhPreview2"]);
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