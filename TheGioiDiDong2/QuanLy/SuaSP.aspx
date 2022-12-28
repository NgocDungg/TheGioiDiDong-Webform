<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuaSP.aspx.cs" Inherits="TheGioiDiDong2.QuanLy.ThemND" %>

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
            
            <h2 style="text-align:center; color:black">Nhập thông tin </h2>

            <div>
            <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="ID:" ForeColor="black"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbID" runat="server" Width="195px" Enabled="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Tên sản phẩm: " ForeColor="black"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbTenSP" runat="server" Width="195px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Giá bán: " ForeColor="black"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbGiaBan" runat="server" Width="195px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style2">
                        &nbsp;</td>
                    
                    <td class="auto-style3">
                        <asp:Image ID="imgpr" runat="server"  Width="80px" Height="100px"/>
                    </td>
                    <td>
                        <asp:Image ID="imgpr2" runat="server"  Width="202px" Height="100px"/>
                    </td>
                    <td>
                        <asp:Image ID="imgpr3" runat="server"  Width="199px" Height="100px"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Ảnh: " ForeColor="black"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="UpAnh1" runat="server"  />
                    </td>

                    <td class="auto-style3">
                        <asp:FileUpload ID="UpAnh2" runat="server"  />
                    </td>

                    <td class="auto-style3">
                        <asp:FileUpload ID="UpAnh3" runat="server"  />
                    </td>

                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                
                
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="bSua" runat="server"  Text="Sửa" OnClick="bSua_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        </div>
        </div>
    </form>
</body>
</html>
