using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2.Dao
{
    public class DaoRecommend
    {
        public static List<Recommend> getAll()
        {
            List<Recommend> lstND = new List<Recommend>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT ID, TenSP, GiaBan, Anh FROM SanPham2";
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
                Recommend objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new Recommend();
                    objSV.ID = Convert.ToInt32(sqlDataReader["ID"]);
                    objSV.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSV.GiaBan = Convert.ToInt32(sqlDataReader["GiaBan"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);

                    lstND.Add(objSV);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }
        }
        public static List<Recommend> getPart1()
        {
            List<Recommend> lstND = new List<Recommend>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT top 5 ID, TenSP, GiaBan, Anh FROM SanPham2 order by ID asc";
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
                Recommend objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new Recommend();
                    objSV.ID = Convert.ToInt32(sqlDataReader["ID"]);
                    objSV.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSV.GiaBan = Convert.ToInt32(sqlDataReader["GiaBan"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);

                    lstND.Add(objSV);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }
        }
        public static List<Recommend> getPart2()
        {
            List<Recommend> lstND = new List<Recommend>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT top 5 ID, TenSP, GiaBan, Anh FROM SanPham2 order by ID desc";
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
                Recommend objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new Recommend();
                    objSV.ID = Convert.ToInt32(sqlDataReader["ID"]);
                    objSV.TenSP = Convert.ToString(sqlDataReader["TenSP"]);
                    objSV.GiaBan = Convert.ToInt32(sqlDataReader["GiaBan"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);

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