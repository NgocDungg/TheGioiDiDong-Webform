<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QlySanPham.aspx.cs" Inherits="TheGioiDiDong2.QuanLy.QlyNguoiDung" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            display:flex;
            justify-content:center;
            align-items:center;
            background-image:url(../Theme/backgrounglogin.jpg);
            
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <span>Xin chào <%Response.Write(Session["FullName"]); %></span> <br />

            Tìm kiếm <asp:TextBox ID="tbIDsearch" runat="server"></asp:TextBox>
            <asp:Button ID="bSearch" runat="server" Text="Search" OnClick="bSearch_Click" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" PageSize="5" Width="100%" CellPadding="4" EnableViewState="false" 
                DataKeyNames="ID" ForeColor="White" GridLines="Both" 
                OnRowDeleting="GridView1_RowDeleting" 
                OnRowEditing="GridView1_RowEditing" 
                OnPageIndexChanging="GridView1_PageIndexChanging"
                 AllowPaging="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top:10px"
                >
                
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
                            <%#Eval("GiaBan") %>
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

                    <asp:TemplateField HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                           
                           <a href="SuaSP.aspx?id=<%#Eval("ID") %>" 
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
                        <asp:Button style="margin-top:15px; padding:5px" ID="btnThem" class="btn-them" runat="server" Text="Them nhan vien" OnClick="btnThem_Click" />

        </div>
    </form>
</body>
</html>
