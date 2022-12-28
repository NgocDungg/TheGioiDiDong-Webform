<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DT.aspx.cs" Inherits="TheGioiDiDong2.Web.DienThoai.DT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">   
    <link rel="stylesheet" href="DT.css" />
    <link rel="stylesheet" href="main.css">
    
    <link rel="Icon" href="../../Icon/iconWeb.png"/>
    <link
    rel="stylesheet"
    href="../../bootstrap-4.6.2-dist/css/bootstrap.min.css"
  />
    <title>
        Tổng sản phầm
    </title>
    <style>
        body {
            background-color: #f3f3f3;
        }

        .SqlContainer {
            width: 1200px;
            height: 810px;
            margin-top: 10px;
            /*background-color: lightcoral;*/
            padding-top: 10px;
            display: block;
        }

        .SqlItem {
            width: 225px;
            height: 350px;
            background-color: white;
            margin-left: 10px;
            border-radius: 10px;
            padding-top: 10px;
            margin-bottom:10px;
        }

        .PicProduct {
            width: 200px;
            height: 220px;
            background-color: blue;
            margin-left: 10px;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .TenSp {
            font-size: 18px;
            margin-left: 0px;
            
            text-align:center
        }

        .GiaSp {
            font-size: 19px;
            text-align:center;
            color: lightcoral;
        }
        .imgSql{
            width:100%;
            height:100%;
        }
        a{
            color:black;
            
        }
        a:hover{
            text-decoration:none;
            color:black;
        }
    </style>
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
            <a href="../LichSuDon/index.html">
              <div class="LichSuDon">
                <span>Lịch sử đơn</span>
              </div>
            </a>
            <!--Gio hang  -->
            <div class="GioHang">
                <img src="../../Icon/LogoGiohang.png" alt="" /><span
                  >
                   <asp:LinkButton ID="GioHang" runat="server" OnClick="GioHang_Click"> Giỏ hàng</asp:LinkButton>

                                                               </span
                >
              </div>
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
             
              <a href="#"><li>Máy cũ giá rẻ</li></a>
              <a href="#"><li>Sim, thẻ cào</li></a>
              <a href="#"><li>Dịch vụ tiện ích</li></a>
            </ul>
          </div>
        </div>
        <!-- end BotHeader -->
      </div>
      <!-- End header -->

      <div class="mcontainer">
          <div class="content" style="margin-left:100px; height:auto; margin-bottom:300px">
        <div class="banner">
            <div class="banner-l carousel slide" id="banner-l" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="../../AllDT/Banner/1.png" alt="">
                    </div>
                    <div class="carousel-item">
                        <img src="../../AllDT/Banner/2.png" alt="">
                    </div>
                    <div class="carousel-item">
                        <img src="../../AllDT/Banner/800-200-800x200-76.png" alt="">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-target="#banner-l" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </button>
                  <button class="carousel-control-next" type="button" data-target="#banner-l" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </button>
            </div>
            <div class="banner-r">
                <img src="../../AllDT/Banner/r1.png" alt="">
                <img src="../../AllDT/Banner/r2.png" alt="">
            </div>
        </div>

            <div class="container2">
               
                <div class="SqlContainer">
                <asp:DataList ID="dtlAll" runat="server" DataKeyField="ID"  RepeatDirection="Horizontal" RepeatColumns="5">
                    <ItemTemplate>
                       <a href="ChiTietSanPham.aspx?id=<%#Eval("ID") %>">
                            <div class="SqlItem">
                                <div class="PicProduct">
                                    <asp:Image CssClass="imgSql" runat="server" ImageUrl='<%# "../../SqlLoadimg/" + Eval("Anh") %>'/>
                                </div>
                                <div class="TenSp"><%#Eval("TenSP") %></div>
                                
                                <div class="GiaSp"><%#Eval("GiaBan") %>đ</div>
                            </div>
                        

                        </a>
                    </ItemTemplate>
                </asp:DataList>
           </div>
                    </div>
        

           
               
                     
          
      </div>
        </div>
     
      <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
      <script src="../../bootstrap-4.6.2-dist/js/bootstrap.min.js"></script>

    </form>
</body>
</html>
