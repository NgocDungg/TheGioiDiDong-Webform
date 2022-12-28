<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BannerSlideSua.aspx.cs" Inherits="TheGioiDiDong2.QuanLy.BannerSlideSua" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href=""/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 153px;
        }
        .auto-style3 {
            width: 237px;
        }
        .auto-style4 {
            width: 153px;
            height: 23px;
        }
        .auto-style5 {
            width: 237px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .Container{
            margin-top:100px;
        }
        body{
            display:flex;
            justify-content:center;
            align-items:center;
            background-color:white;
        }
        .DImg{
            width:80px;
            height:100px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Container">
            
            <h2 style="text-align:center; color:black">Sửa ảnh</h2>

            <div>
            <div>
            <table class="auto-style1">
                
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="ID: " ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbID" runat="server" Width="195px" Enabled="False" EnableTheming="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style2">
                        &nbsp;</td>
                    
                    <td class="auto-style3">
                        <asp:Image ID="imgpr" runat="server"  Width="400px" Height="100px"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Ảnh: " ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="UpAnh" runat="server"  />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
                
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="bSua" runat="server"  Text="Sửa" OnClick="bSua_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        </div>
        </div>
    </form>
</body>
</html>

