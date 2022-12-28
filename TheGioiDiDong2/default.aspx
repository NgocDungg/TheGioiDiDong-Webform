<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TheGioiDiDong2.Web.TrangChu.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css" />
    
    <link rel="Icon" href="../../Icon/iconWeb.png"/>
    <link
      rel="stylesheet"
      href="../../bootstrap-4.6.2-dist/css/bootstrap.min.css"
    />
    <title>Thegioididong.com</title>
    <%-- recommend style --%>
    <style>
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
            /*background-color: blue;*/
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
    </style>
    <%-- end recommend style --%>
    <style>
        .sliderFimg{
            width:580px;
           margin:0px 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="Container">
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
                  <div class="otherChoice" >
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
                <a href="#"><li>Hotline</li></a>
            </ul>
          </div>
        </div>
        <!-- end BotHeader -->
      </div>
      <!-- End header -->

      <!-- Content -->
      <div class="Content">
        <!-- big banner -->
        <div class="bigBanner">
          <img src="../../Picture/Bigbanner.png" alt="" style="width: 1920px" />
        </div>
        <!-- end big banner -->

        <!-- main-container -->
        <div class="main-container" style="margin-bottom:">
          <div class="sliderF">
              <div
                  id="carouselExampleControls"
                  class="carousel slide"
                  data-ride="carousel">
                  <div class="carousel-inner">
                      <div class="carousel-item active">
                          <div class="item1">
                              <div class="left">
                                  <asp:DataList ID="dtlSliderFp1" runat="server" RepeatDirection="Horizontal">
                                      <ItemTemplate>
                                          <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../../SqlLoadimg/SliderF/" + Eval("Anh") %>' CssClass="sliderFimg"/>
                                      </ItemTemplate>
                                  </asp:DataList>
                              </div>
                              
                          </div>
                      </div>
                      <div class="carousel-item">
                          <div class="item1">
                              <div class="left">
                                  <a href="#">
                                      <asp:DataList ID="dtlSliderFp2" runat="server"  RepeatDirection="Horizontal">
                                      <ItemTemplate>
                                          <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../../SqlLoadimg/SliderF/" + Eval("Anh") %>' CssClass="sliderFimg"/>
                                      </ItemTemplate>
                                  </asp:DataList>
                              </div>
                          </div>
                      </div>
                      
                  </div>
                  <button
                      class="carousel-control-prev"
                      type="button"
                      data-target="#carouselExampleControls"
                      data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                  </button>
                  <button
                      class="carousel-control-next"
                      type="button"
                      data-target="#carouselExampleControls"
                      data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                  </button>
              </div>
          </div>
          <!-- event list -->
          <ul class="eventList">
            <a href="#">
              <li class="event" style="margin-left: 10px">
                <img
                  src="https://cdn.tgdd.vn//content/icon--96x104-2.png"
                  alt=""
                />
                <span>Săn sale online</span>
              </li>
            </a>
            <!--  -->
            <a href="#">
              <li class="event">
              <img
                src="https://cdn.tgdd.vn//content/Group-46580-100x100-1.png"
                alt=""
              />
              <span>Laptop tựu trường</span>
            </li>
            </a>
            <!--  -->
            <a href="#">
              <li class="event">
              <img
                src="https://cdn.tgdd.vn//content/100x100-TGD─E-100x100-1.png"
                alt=""
              />
              <span>Ưu đãi ngập trời</span>
            </li>
            </a>
            <!--  -->
            <a href="#">
              <li class="event">
              <img
                src="https://cdn.tgdd.vn//content/Group-2-120x120.png"
                alt=""
              />
              <span>Siêu sale phụ kiện</span>
            </li>
            </a>
          </ul>
          <!-- end event list -->
          <!-- quang cao -->
          <div class="QuangCao">
            <img
              src="../../Picture/adBanner1.png"
              alt=""
              style="height: 100px; width: 100%"
            />
          </div>
          <!-- end quang cao -->
          
            <!-- LuckyWheel -->
          <div class="luckyWheel">
            <div class="lwTop">
              <img src="../../Picture/Banner2.png" alt="">
            </div>
            <div class="lwBot">
              <div id="luckyWheelSlide" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="product">
                        <a href="#">
                            <asp:DataList ID="dtlLuckyWheel1" runat="server" DataKeyField="ID" RepeatDirection="Horizontal" RepeatColumns="5">
                                <ItemTemplate>
                                    <a href="ChiTietSanPham.aspx?id=<%#Eval("ID") %>">
                                    <div class="SqlItem">
                                        <div class="PicProduct">
                                            <asp:Image CssClass="imgSql" runat="server" ImageUrl='<%# "../../SqlLoadimg/" + Eval("Anh") %>' />
                                        </div>
                                        <div class="TenSp"><%#Eval("TenSP") %></div>

                                        <div class="GiaSp"><%#Eval("GiaBan") %>đ</div>
                                    </div>
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </a>
                    </div>
                  </div>
                    <div class="carousel-item">
                    <div class="product">
                        <a href="#">
                            <asp:DataList ID="dtlLuckyWheel2" runat="server" DataKeyField="ID"  RepeatDirection="Horizontal" RepeatColumns="5">
                                <ItemTemplate>
                                    <a href="ChiTietSanPham.aspx?id=<%#Eval("ID") %>">
                                    <div class="SqlItem">
                                        <div class="PicProduct">
                                            <asp:Image CssClass="imgSql" runat="server" ImageUrl='<%# "../../SqlLoadimg/" + Eval("Anh") %>' />
                                        </div>
                                        <div class="TenSp"><%#Eval("TenSP") %></div>

                                        <div class="GiaSp"><%#Eval("GiaBan") %>đ</div>
                                    </div>
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </a>
                    </div>
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-target="#luckyWheelSlide" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-target="#luckyWheelSlide" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </button>
              </div>
            </div>
          </div>
          <!-- end LuckyWheel -->


          <!-- vivo week -->
          <div class="vivoWeek">
            <h2>TUẦN LỄ VIVO</h2>
            <div class="bannerSlide carousel slide" id="bannerSlide" data-ride="carousel">
              <div class="carousel-inner">
                <!-- active -->
                <div class="carousel-item active">
                  <div class="productVivo">
                    <div class="itemVivo">
                      <img src="../../Slider/VivoWeek/1.png" alt="">
                    </div>
                    <div class="itemVivo">
                      <img src="../../Slider/VivoWeek/2.png" alt="">
                    </div>
                    <div class="itemVivo">
                      <img src="../../Slider/VivoWeek/3.png" alt="">
                    </div>
                  </div>
                </div>
                <!-- end active -->
                <!-- part2 -->
                <div class="carousel-item">
                  <div class="productVivo">
                    <div class="itemVivo">
                      <img src="../../Slider/VivoWeek/3.png" alt="">
                    </div>
                    <div class="itemVivo">
                      <img src="../../Slider/VivoWeek/4.png" alt="">
                    </div>
                    <div class="itemVivo">
                      <img src="../../Slider/VivoWeek/5.png" alt="">
                    </div>
                  </div>
                </div>
                <!-- end part 2 -->
              </div>
              <button class="carousel-control-prev" type="button" data-target="#bannerSlide" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-target="#bannerSlide" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </button>
            </div>
            <div class="vivoSlide">
              <div id="vivoWeekP" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="product">
                      <a href="#">
                        
                        <asp:DataList ID="dtlVivoWeek1" runat="server" DataKeyField="ID" RepeatDirection="Horizontal" RepeatColumns="5">
                                <ItemTemplate>
                                    <a href="ChiTietSanPham.aspx?id=<%#Eval("ID") %>">
                                    <div class="SqlItem">
                                        <div class="PicProduct">
                                            <asp:Image CssClass="imgSql" runat="server" ImageUrl='<%# "../IconProduct/vivoWeek/" + Eval("Anh") %>' />
                                        </div>
                                        <div class="TenSp"><%#Eval("TenSP") %></div>

                                        <div class="GiaSp"><%#Eval("GiaBan") %>đ</div>
                                    </div>
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                      
                      </a>
                      
                    </div>
                  </div>
                  <div class="carousel-item ">
                    <div class="product">
                      <asp:DataList ID="dtlVivoWeek2" runat="server" DataKeyField="ID" RepeatDirection="Horizontal" RepeatColumns="5">
                                <ItemTemplate>
                                    <a href="ChiTietSanPham.aspx?id=<%#Eval("ID") %>">
                                    <div class="SqlItem">
                                        <div class="PicProduct">
                                            <asp:Image CssClass="imgSql" runat="server" ImageUrl='<%# "../IconProduct/vivoWeek/" + Eval("Anh") %>' />
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
                <button class="carousel-control-prev" type="button" data-target="#vivoWeekP" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-target="#vivoWeekP" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </button>
              </div>
            </div>
          </div>
          <!-- end vivo week -->

          <!-- XuHuong -->
          <div class="XuHuong">
            <div class="XHtop">
              <span>XU HƯỚNG MUA SẮM</span>
            </div>
            <div class="XHbot">
              <a href="#">
                <div class="item">
                <img src="../../IconProduct/XuHuong/DienThoai1.png" alt=""> <span>Điện thoại</span>
              </div>
              </a>
              <a href="#">
                <div class="item">
                <img src="../../IconProduct/XuHuong/LapTop1.jpg" alt="" style="width: 100%;"> <span>Laptop Gaming</span>
              </div>
              </a>
              <a href="#">
                <div class="item">
                <img src="../../IconProduct/XuHuong/TaiNghe1.jpg" alt=""> <Span>Tai nghe không dây</Span>
              </div>
              </a>
              <a href="#">
                <div class="item">
                <img src="../../IconProduct/XuHuong/DongHo1.jpg" alt=""> <span>Apple Watch S8, ULTRA | SE</span>
              </div>
              </a>
            </div>
          </div>
          <!-- end XuHuong -->

          <!-- NoiBat -->
          <div class="NoiBat">
            <span>DANH MỤC NỔI BẬT</span>
            <div class="itemNoiBat">
              <div class="TopNB">
                <div>
                  <img src="../../IconProduct/NoiBat/Dienthoai-128x129.png" alt=""> <span>Điện thoại</span>
                </div>
                <div><img src="../../IconProduct/NoiBat/Laptop-129x129.png" alt=""><span>Laptop</span></div> 
                <div><img src="../../IconProduct/NoiBat/Tablet-128x129.png" alt=""><span>Tablet</span></div> 
                <div><img src="../../IconProduct/NoiBat/Donghothongminh-128x129.png" alt=""><span>SmartWatch</span></div> 
                <div><img src="../../IconProduct/NoiBat/Donghothoitrang-128x129.png" alt=""><span>Đồng hồ</span></div>
                <div><img src="../../IconProduct/NoiBat/Thietbimang-128x129.png" alt=""><span>Wifi</span></div>
                <div><img src="../../IconProduct/NoiBat/Oplung-128x128.png" alt=""><span>Ốp lưng</span></div>
                <div><img src="../../IconProduct/NoiBat/chuot-128x129.png" alt=""><span>Chuột</span></div>
                <div><img src="../../IconProduct/NoiBat/ban-phim-128x129.png" alt=""><span>Bàn phím</span></div>
                <div><img src="../../IconProduct/NoiBat/Simthecao-129x129.png" alt=""><span>Sim thẻ</span></div>
              </div>
              <div class="TopNB">
                <div><img src="../../IconProduct/NoiBat/Loa-128x128.png" alt=""> <span>Loa</span> </div>
                <div><img src="../../IconProduct/NoiBat/Tainghe-128x129.png" alt=""> <span>Tai nghe</span> </div>
                <div><img src="../../IconProduct/NoiBat/Sacduphong-128x129.png" alt=""> <span>Sạc phòng</span> </div>
                <div><img src="../../IconProduct/NoiBat/Capsac-129x129.png" alt=""> <span>Cáp sạc</span> </div>
                <div><img src="../../IconProduct/NoiBat/Maytinhbo-128x129.png" alt=""> <span>Máy tính bộ</span> </div>
                <div><img src="../../IconProduct/NoiBat/Mayin-128x129.png" alt=""> <span>Máy in</span> </div>
                <div><img src="../../IconProduct/NoiBat/Manhinhmaytinh-128x129.png" alt=""> <span>Màn hình</span> </div>
                <div><img src="../../IconProduct/NoiBat/Phukiengaming-128x129.png" alt=""> <span>Phụ kiện</span> </div>
                <div><img src="../../IconProduct/NoiBat/icon-camera-128x129 (1).png" alt=""> <span>Camera</span> </div>
                <div><img src="../../IconProduct/NoiBat/may-chieu-icon-128x129.png" alt=""> <span>SmartHouse</span> </div>
              </div>
            </div>
          </div>
          <!-- end NoiBat -->

          <!-- giam gia online -->
          <div class="GiamGiaOnline">
            <div class="giamgiaText">
              <span>GIẢM THÊM KHI THANH TOÁN ONLINE</span>
            </div>
            <div id="giamgiaSlide" class="carousel slide giamgiaOnline" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <div class="gridGiamGia">
                    <div class="bannerGiamGia">
                      <img src="../../Slider/GiamGiaOnline/380-x-200-380x200-4.png" alt="">
                    </div>
                    <div class="bannerGiamGia">
                      <img src="../../Slider/GiamGiaOnline/380x200--1--380x200.jpg" alt="">
                    </div>
                    <div class="bannerGiamGia">
                      <img src="../../Slider/GiamGiaOnline/Desk-380x200.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="carousel-item">
                  <div class="gridGiamGia">
                    <div class="bannerGiamGia">
                      <img src="../../Slider/GiamGiaOnline/VNPay-Toan-bo-san-pham-380x200.png" alt="">
                    </div>
                    <div class="bannerGiamGia">
                      <img src="../../Slider/GiamGiaOnline/VNPayAppleWatch-380x200.png" alt="">
                    </div>
                    <div class="bannerGiamGia">
                      <img src="../../Slider/GiamGiaOnline/VnPaylaptop-380x200.png" alt="">
                    </div>
                  </div>
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-target="#giamgiaSlide" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-target="#giamgiaSlide" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </button>
            </div>
          </div>
          <!-- end giam gia online -->

          <!--Dich vu tien ich  -->
          <div class="DVTienIch" style="margin-bottom:30px">
            <h3>DỊCH VỤ TIỆN ÍCH</h3>
            <div class="DichVu">
              <div style="background-color:#dceefe ;">
                <img src="../../Icon/MaTheCao.png" alt=""> <span>Mua Mã thẻ cào</span> <br>
                <p>Giảm 3% cho mệnh giá từ 100.000 trở lên</p>
              </div>
              <div style="background-color:#fef5cf ;">
                <img src="../../Icon/DongTien.png" alt=""> <span>Dịch vụ đóng tiền</span> <br>
                <p>Điện, Nước, Internet, Cước điện thoại trả sau</p>
              </div>
              <div style="background-color:#ffefdb ;">
                <img src="../../Icon/TheGame.png" alt=""> <span>Mua thẻ game</span> <br>
                <p>Giảm 2% cho nhà mạng, áp dụng cho mệnh giá từ 300.000 trở lên</p>
              </div>
              <div style="background-color:#e1fecf ;">
                <img src="../../Icon/VeMayBay.png" alt=""> <span>Vé máy bay, tàu</span> <br>
                <p>Thu hộ tiền vé xe, vé tàu, vé máy bay</p>
              </div>
            </div>
          </div>
          <!-- end dich vu tien ich -->
            <div class="DichVu"></div>
            <%-- Recommend product --%>
          
              <asp:DataList ID="dtlRecommend" runat="server" DataKeyField="ID"  RepeatDirection="Horizontal" RepeatColumns="5">
                    <ItemTemplate>
                            <div class="SqlItem">
                               
                                    
                            <a href="ChiTietSanPham.aspx?id=<%#Eval("ID") %>" style="text-decoration:none;color:black;width:225px; height:350px">
                                <div class="PicProduct">
                                    <asp:Image CssClass="imgSql" runat="server" ImageUrl='<%# "../../SqlLoadimg/" + Eval("Anh") %>'/>
                                </div>
                                <div class="TenSp"><%#Eval("TenSP") %></div>
                                
                                <div class="GiaSp"><%#Eval("GiaBan") %>đ</div>
                            </a>
                            </div>
                            
                    </ItemTemplate>
                </asp:DataList>
         
                <%-- End Recommend product --%>
        </div>
        <!-- end main-maincontainer -->
      </div>
      <!-- end content -->

      <!-- Footer -->
      <div class="Footer">
        <div class="f-content">
          <div class="col1">
            <ul>
              <li>Tích điểm Quà tặng VIP</li>
              <li>Lịch sử mua hàng</li>
              <li>Tìm hiểu về mua trả góp</li>
              <li>Chính sách bảo hành</li>
            </ul>
          </div>
          <div class="col1">
            <ul>
              <li>Giới thiệu công ty (MWG.vn)</li>
              <li>Tuyển dụng</li>
              <li>Gửi góp ý, khiếu nại</li>
              <li>Tìm siêu thị (3.345 shop)</li>
            </ul>
          </div>
          <div class="col1">
            <ul>
              <li>Tổng đài hỗ trợ (Miễn phí gọi)</li>
              <li>Gọi mua: 1800.1060 (7:30 - 22:00)</li>
              <li>Kỹ thuật: 1800.1763 (7:30 - 22:00)</li>
              <li>Khiếu nại: 1800.1062 (8:00 - 21:30)</li>
              <li>Bảo hành: 1800.1064 (8:00 - 21:00)</li>
            </ul>
          </div>
          <div class="col2">
            <div class="contact">
              <img src="../../Icon/fblogo.png" alt=""> <span>3775.2k Fan</span>
              <img src="../../Icon/ytlogo.png" alt=""> <span>851k Đăng ký</span>
              <img src="../../Icon/icon_zalo-removebg-preview.png" alt=""> <span>Zalo TGDĐ</span>
            </div>
            <div class="certificate">
              <img src="../../Icon/DaThongBao.png" alt="">
              <img src="../../Icon/RedOne.png" alt="">
              <img src="../../Icon/DMCA.png" alt="">
              <img src="../../Icon/handle_cert.png" alt="" style="width: 85px;height: 39px;margin-top: 10px;">
            </div>
            <div class="website">
              <span style="margin-left:10px ;">Website cùng tập đoàn</span> <br>
              <img src="../../Icon/topzone.png" alt="">
              <img src="../../Icon/DIenMayXanh.png" alt="">
              <img src="../../Icon/BachHoaXanh.png" alt="">
              <img src="../../Icon/AVAFashion.png" alt="">
              <img src="../../Icon/AVAJI.png" alt="">
              <img src="../../Icon/AVAKid.png" alt="">
              <img src="../../Icon/AVASport.png" alt="">
            </div>
          </div>
        </div>
      </div>
      <!-- end footer -->
    </div>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="../../bootstrap-4.6.2-dist/js/bootstrap.min.js"></script>
        </div>
    </form>
</body>
</html>
