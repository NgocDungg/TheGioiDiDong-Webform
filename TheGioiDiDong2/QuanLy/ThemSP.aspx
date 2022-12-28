<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemSP.aspx.cs" Inherits="TheGioiDiDong2.QuanLy.ThemSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 153px;
        }
        .auto-style3 {
            width: 237px;
            margin-left: 40px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div class="Container">
            <h2 style="text-align:center; color:black">Nhập thông tin sản phẩm </h2>

            <div>
            <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Tên sản phẩm: " ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbTenSP" runat="server" Width="195px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Giá bán: " ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbGiaBan" runat="server" Width="195px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Ảnh: " ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="UpAnh" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
                
                <tr>
                    <td class="auto-style4">Ảnh Preview 1:&nbsp;</td>
                    <td class="auto-style5">
                        <asp:FileUpload ID="UpAnh0" runat="server" />
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Ảnh Preview 2:</td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="UpAnh1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="bSua" runat="server"  Text="Thêm dữ liệu" OnClick="bSua_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        </div>
        </div>
    </form>
</body>
</html>
