<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="TheGioiDiDong2.QuanLySanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="~/QuanLySanPham.css" />
    <link rel="Icon" href="../../Icon/iconWeb.png"/>
    <title>Quản lý</title>
    <style>
        body{
            display:flex;
            justify-content:center;
            align-items:center;
            background-color:white;
            
        }
        .container{
            margin-top:10px;
            text-align:center;
        }
        .container span{
            color:white;
            font-size:20px
        }
        .DImg{
            width:80px;
            height:100px
        }
        a{
            text-decoration:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Container">
        

        <div class="Content">
            <div class="left" style="margin-top:50px">
                <h4>Chào mừng quay trở lại trang quản lý</h4>
                <ul style="text-decoration:none">
                    <a href="default.aspx"><li>Quay lại trang chủ</li></a>

                    <a href="QuanLySanPham.aspx"><li>Quản lý sản phẩm</li></a>

                    <a href="QuanLyKH.aspx"><li>Quản lý khách hàng</li> </a>

                    <li><a href="QLBannerSlide.aspx">Quản lý Slider</a></li>

                    <asp:Button ID="bLogOut" runat="server" Text="Đăng xuất" OnClick="bLogOut_Click" />
                </ul>
            </div>
            <div class="right">
                Tìm kiếm <asp:TextBox ID="tbIDsearch" runat="server"></asp:TextBox>
            <asp:Button ID="bSearch" runat="server" Text="Search" OnClick="bSearch_Click" />
            <asp:GridView ID="GridView1" AutoGenerateColumns="false" Width="1000px" Height="500px" PageSize="4" runat="server"
                CellPadding="4" EnableViewState="false" DataKeyNames="ID" ForeColor="Black" GridLines="Both"
                OnRowDeleting="GridView1_RowDeleting" 
                OnRowEditing="GridView1_RowEditing" 
                OnPageIndexChanging="GridView1_PageIndexChanging"
                 AllowPaging="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top:10px" >
                
                <Columns>
                    <asp:TemplateField HeaderText="ID" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%#Eval("ID") %>
                        </ItemTemplate>

                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Tên sản phẩm" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%#Eval("TenSP") %>
                        </ItemTemplate>

                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Giá bán" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%#Eval("GiaBan") %>đ
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Ảnh" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                           
                            <asp:Image runat="server" CssClass="DImg" ImageUrl='<%#"../../SqlLoadimg/"+Eval("Anh")%>'/>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Ảnh Preview 1" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                           
                            <asp:Image runat="server" CssClass="DImg" Width="200px" ImageUrl='<%#"../../SqlLoadimg/"+Eval("AnhPreview1")%>'/>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Ảnh Preview 2"  HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                           
                            <asp:Image runat="server" CssClass="DImg" Width="200px" ImageUrl='<%#"../../SqlLoadimg/"+Eval("AnhPreview2")%>'/>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                           
                           <a href="QuanLy/SuaSP.aspx?id=<%#Eval("ID") %>" 
                               style="text-decoration:none; color:black; padding:1px 10px; background-color:#efefef">Sửa</a>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:CommandField ControlStyle-CssClass="input_delete" ShowDeleteButton="True" ButtonType="Button" HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Left">
                        <ControlStyle CssClass="input_edit"></ControlStyle>

                        <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
                        <asp:Button style="margin-top:15px; padding:5px" ID="btnThem" class="btn-them" runat="server" Text="Thêm sản phẩm" OnClick="btnThem_Click" />
                
            </div>
        </div>
    </div>
    </form>
</body>
</html>
