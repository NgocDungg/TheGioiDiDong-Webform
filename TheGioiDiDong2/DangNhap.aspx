<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="TheGioiDiDong2.Web.DangNhap.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="LSD.css"/>
    <link rel="stylesheet" href="DangNhapmain.css"/>
    
    <link rel="Icon" href="../../Icon/iconWeb.png"/>
    <title>Đăng nhập</title>
    <style>
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        

        <div class="container">

            <img src="https://www.thegioididong.com/lich-su-mua-hang/images/i1.png" alt="">
            <span>Đăng nhập
            </span>

            <asp:TextBox ID="tbTaiKhoan" runat="server" placeholder="Tài khoản" autocomplete="off" style="margin-bottom: 10px; padding-left: 30px;"></asp:TextBox>

            <asp:TextBox ID="tbMatKhau" TextMode="Password" runat="server" placeholder="Mật khẩu" autocomplete="off" style="padding-left: 30px;"></asp:TextBox>
            <asp:Button ID="bDangNhap" runat="server" Text="Đăng nhập"
                Style="width: 300px; height: 50px; border-radius: 20px; background-color: #44aee6; margin-top: 25px; color: white;" 
                CssClass="Button1" OnClick="bDangNhap_Click1" />
            <span style="font-size:14px;margin-top:20px">Chưa có tài khoản ? <a href="DangKy.aspx">Nhấn vào đây để đăng ký</a></span>
        </div>


        
    </form>
</body>
</html>
