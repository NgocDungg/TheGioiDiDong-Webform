using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheGioiDiDong2.Entity
{
    public class SanPham
    {
        public int ID { get; set; }
        public string TenSP { get; set; }
        public int GiaNhap { get; set; }
        public int Giaban { get; set; }
        public string Anh { get; set; }
        public string AnhPreview1 { get; set; }
        public string AnhPreview2 { get; set; }
    }
}