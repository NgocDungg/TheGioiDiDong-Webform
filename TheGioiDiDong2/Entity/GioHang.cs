using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheGioiDiDong2.Entity
{
    public class GioHang
    {
        public int IDCart { get; set; }
        public int IDProduct { get; set; }
        public int  UserID { get; set; }
        public string TenSP { get; set; }
        public int GiaBan { get; set; }
        public string Anh { get; set; }
        public int SoLuong { get; set; }
        public string TongTien { get; set; }
        public string FullName { get; set; }
    }
}