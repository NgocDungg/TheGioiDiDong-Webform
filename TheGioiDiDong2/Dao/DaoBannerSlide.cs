using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TheGioiDiDong2.Entity;

namespace TheGioiDiDong2.Dao
{
    public class DaoBannerSlide
    {
        public static BannerSlide getOne(string _id)
        {
            BannerSlide objND = null;

            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            string sql = "select ID, Anh from [BannerSlide] where ID = '" + _id + "'";

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.CommandType = System.Data.CommandType.Text;

                conn.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (reader.Read())
                {
                    objND = new BannerSlide();
                    objND.ID = Convert.ToInt32(reader["ID"]);
                    objND.Anh = Convert.ToString(reader["Anh"]);
                }
                reader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return objND;
            }
        }
        public static List<BannerSlide> getAll()
        {
            List<BannerSlide> lstND = new List<BannerSlide>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT ID, Anh FROM BannerSlide";
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
                BannerSlide objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new BannerSlide();
                    objSV.ID = Convert.ToInt32(sqlDataReader["ID"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    lstND.Add(objSV);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }
        }
        public static List<BannerSlide> getPart1()
        {
            List<BannerSlide> lstND = new List<BannerSlide>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT top 2 ID, Anh FROM BannerSlide order by ID asc";
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
                BannerSlide objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new BannerSlide();
                    objSV.ID = Convert.ToInt32(sqlDataReader["ID"]);
                    objSV.Anh = Convert.ToString(sqlDataReader["Anh"]);
                    lstND.Add(objSV);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }
        }
        public static List<BannerSlide> getPart2()
        {
            List<BannerSlide> lstND = new List<BannerSlide>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT top 2 ID, Anh FROM BannerSlide order by ID desc";
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
                BannerSlide objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new BannerSlide();
                    objSV.ID = Convert.ToInt32(sqlDataReader["ID"]);
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