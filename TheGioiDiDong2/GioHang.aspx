<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="TheGioiDiDong2.GioHangg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="GioHang.css">
    
    <link rel="Icon" href="../../Icon/iconWeb.png"/>
    <title>Giỏ hàng</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
      <div class="Header">
        <!--TopHeader  -->
        <div class="TopHeader">
          <div class="THContent">
            <a href="default.aspx">
              <div class="logoImage">
                <img src="../../Icon/LogoTheGioiDiDong.png" alt="" />
              </div>
            </a>
            <!--Dia chi  -->
            <a href="#">
              <div class="DiaChi">
                <span>Xem giá, tồn kho tại:</span>
              </div>
            </a>
            <!--Search  -->
            <div class="inputSearch">
              <input type="text" style="border-radius: 5px; border: 0px; width: 100%; height: 100%; padding-left: 20px;" placeholder="Bạn đang tìm gì..." >
            </div>
            <!--LichSuDon  -->
            <a href="#">
              <div class="LichSuDon">
                <span>Lịch sử đơn</span>
              </div>
            </a>
            <!--Gio hang  -->
            <a href="#">
              <div class="GioHang">
                <img src="../../Icon/LogoGiohang.png" alt="" /><span
                  >Giỏ hàng</span
                >
              </div>
            </a>
            <!--  -->
              <a href="../../QuanLy/QlyNguoiDung.aspx">
                  <div class="otherChoice" style="">
               <asp:LinkButton OnClick="bQly_Click" ID="bQly" runat="server">
                   <asp:Label ID="lbSession" runat="server" Text="Đăng nhập"></asp:Label>

               </asp:LinkButton>
            </div>
              </a>
             
          </div>
        </div>
        <!--end TopHeader  -->
         
        <!-- BotHeader -->
        <div class="BotHeader">
          <div class="Menu">
            <ul class="mainMenu">
                  <a href="DT.aspx">
                <li>
                  <img
                    src="https://cdn.tgdd.vn//content/icon-phone-96x96-2.png"
                    alt=""
                  />
                  <span>Điện thoại</span>
                </li>
              </a>


              </a>
              <!--  -->
              <a href="#"
                ><li>
                  <img
                    src="https://cdn.tgdd.vn//content/icon-laptop-96x96-1.png"
                    alt=""
                  /><span>Laptop</span>
                </li>
              </a>
              <!--  -->
              <a href="#">
                <li>
                  <img
                    src="https://cdn.tgdd.vn//content/icon-tablet-96x96-1.png"
                    alt=""
                  />
                  <span>Tablet</span>
                </li>
              </a>
              <!--  -->
              <a href="#"
                ><li>
                  <img
                    src="https://cdn.tgdd.vn//content/icon-phu-kien-96x96-1.png"
                    alt=""
                  />
                  <span>Phụ kiện</span>
                </li>
              </a>
              <!--  -->
              <a href="#"
                ><li>
                  <img
                    src="https://cdn.tgdd.vn//content/icon-smartwatch-96x96-1.png"
                    alt=""
                  /><span>SmartWatch</span>
                </li>
              </a>
              <!--  -->
              <a href="#">
                <li>
                  <img
                    src="https://cdn.tgdd.vn//content/watch-icon-96x96.png"
                    alt=""
                  />
                  <span>Đồng hồ</span>
                </li>
              </a>
              <!--  -->
              <a href="#">
                <li>
                  <img
                    src="https://cdn.tgdd.vn//content/icon-pc-96x96.png"
                    alt=""
                  /><span> PC, Máy in</span>
                </li>
              </a>
              <!--  -->
              <a href="#"><li>Máy cũ giá rẻ</li></a>
              <a href="#"><li>Sim, thẻ cào</li></a>
              <a href="#"><li>Dịch vụ tiện ích</li></a>
            </ul>
          </div>
        </div>
        <!-- end BotHeader -->
      </div>
      <!-- End header -->

    <!-- Content -->
      <div class="contai">
        <div class="contentt" ">
               
                <asp:DataList ID="dtlDetaiBuy"  runat="server">
                    <ItemTemplate>
                        <div class="detaiBuy">
                            <div class="DBleft">
                                <div class="imgPR">
                                    <asp:Image ID="imgpr" runat="server" ImageUrl='<%# "SqlLoadimg/" + Eval("Anh") %>' />
                                </div>
                                <asp:Label ID="Label1" CssClass="TenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                            </div>
                            <div class="DBright" >
                                <asp:Label ID="Label2" CssClass="Price" Height="5px" runat="server" Text='<%#Eval("GiaBan")%>'></asp:Label>

                                
                            </div>
                    </ItemTemplate>
                </asp:DataList>
            <div class="Pfinal">
                <span style="margin-left: 20px;font-size: 14px;">Tổng tiền:</span>
                <asp:Label ID="Label3" runat="server" CssClass="finalPrice"  Text=""></asp:Label>
                <asp:Label ID="TongTien" runat="server" ></asp:Label>
            </div>
            <div class="DatHang">
                <asp:Button ID="bDatHang" runat="server" Text="Đặt hàng" CssClass="button" OnClick="bDatHang_Click" />
            </div>
        </div>
      </div>
    <!-- end content -->
    </form>
</body>
</html>
