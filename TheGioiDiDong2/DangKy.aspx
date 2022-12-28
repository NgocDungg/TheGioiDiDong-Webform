<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="TheGioiDiDong2.Web.DangKy.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="DangKy.css" />
    <link rel="stylesheet" href="../DangNhap/main.css" />
    
    <link rel="Icon" href="../../Icon/iconWeb.png"/>
    <title>Đăng ký</title>
</head>
<body style="display:flex; justify-content:center">
    <form id="form1" runat="server">
        
            <div class="container">

            <img src="https://www.thegioididong.com/lich-su-mua-hang/images/i1.png" alt="">
            <span>Đăng ký tài khoản
            </span>

            <asp:TextBox ID="tbTaiKhoan" runat="server" placeholder="Tài khoản" autocomplete="off" style="margin-bottom: 10px; padding-left: 30px;"></asp:TextBox>

            <asp:TextBox ID="tbMatKhau" TextMode="Password" runat="server" placeholder="Mật khẩu" autocomplete="off" style="padding-left: 30px;margin-bottom:10px"></asp:TextBox>

                <asp:TextBox ID="reMatKhau" TextMode="Password" runat="server" placeholder="Nhập lại mật khẩu" autocomplete="off" style="padding-left: 30px; margin-bottom:10px"></asp:TextBox>
           
                <asp:TextBox ID="tbFullName"  runat="server" placeholder="Họ và tên" autocomplete="off" Style="padding-left: 30px;"></asp:TextBox>

                
                <asp:Button ID="bDangKy" runat="server" Text="Đăng ký"
                Style="width: 300px; height: 50px; border-radius: 20px; background-color: #44aee6; margin-top: 25px; color: white;" 
                CssClass="Button1" OnClick="bDangKy_Click" />

                <asp:Label ID="Check" runat="server" Text="" style="margin-top:10px; font-size:16px;" ></asp:Label>
        </div>
       
    </form>
</body>
</html>
