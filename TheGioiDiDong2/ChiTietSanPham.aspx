<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="TheGioiDiDong2.ChiTietSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css" />
    <link rel="stylesheet" href="ChiTietSanPham.css" />
    
    <link rel="Icon" href="../../Icon/iconWeb.png"/>
    <link
    rel="stylesheet"
    href="../../bootstrap-4.6.2-dist/css/bootstrap.min.css"
  />
    <title>Chi tiết sản phẩm</title>
</head>
<body>
    <form id="form1" runat="server">
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
            <div class="Content">
        <div class="nameTag">
            <h1>Điện thoại <asp:Label ID="lbTenSP2" runat="server" Text=""></asp:Label></h1>
        </div>
        <div class="Product">
            <div class="infoP">
              <div class="imgP carousel slide" data-ride="carousel" id="imgP">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                      <asp:Image  ID="preview" Width="690px" Height="385px" runat="server"  />                     
                  </div>
                    <div class="carousel-item ">
                      <asp:Image  ID="Image1"  Width="690px" Height="385px" runat="server"  />                     
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-target="#imgP" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-target="#imgP" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </button>
              </div> 
              <div class="diKem">
                <ul>
                  <li>
                    <div style="margin-bottom: 10px;">
                      <img src="../../Icon/diKem1.png" alt="">
                      <p>1 đổi 1 trong 30 ngày đối với sản phẩm lỗi tại 3353 siêu thị toàn quốc</p>

                      <img src="../../Icon/diKem2.png" alt="" style="margin-left: 10px;">
                      <p>Bảo hành chính hãng điện thoại 1 năm tại các trung tâm bảo hành hãng</p>
                    </div >
                  </li>
                  <li>
                    <img src="../../Icon/diKem3.png" alt="">
                    <p>Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Jack chuyển tai nghe 3.5mm,</p>
                  </li>
                </ul>
              </div> 
              <h4>Cấu hình Điện thoại <asp:Label ID="lbTenSP" runat="server" Text=""></asp:Label></h4>
              <div class="thongSo">
                <ul>
                    <li>
                        <div class="ChiTiet gray">
                            <div class="left">
                                <p>Màn hình:</p>
                            </div>
                            <div class="right">
                                <p>AMOLED, 6.44, Full HD+</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ChiTiet">
                            <div class="left">
                                <p>Hệ điều hành:</p>
                            </div>
                            <div class="right">
                                <p>Android 12</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ChiTiet gray">
                            <div class="left">
                                <p>Camera sau:</p>
                            </div>
                            <div class="right">
                                <p>Chính 64 MP & Phụ 8 MP, 2 MP</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ChiTiet">
                            <div class="left">
                                <p>Camera trước:</p>
                            </div>
                            <div class="right">
                                <p>50 MP</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ChiTiet gray">
                            <div class="left">
                                <p>Chip:</p>
                            </div>
                            <div class="right">
                                <p>MediaTek Dimensity 900 5G</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ChiTiet">
                            <div class="left">
                                <p>RAM:</p>
                            </div>
                            <div class="right">
                                <p>8 GB</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ChiTiet gray">
                            <div class="left">
                                <p>Dung lượng:</p>
                            </div>
                            <div class="right">
                                <p>128 GB</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ChiTiet">
                            <div class="left">
                                <p>SIM:</p>
                            </div>
                            <div class="right">
                                <p>2 Nano SIM (SIM 2 chung khe thẻ nhớ)</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ChiTiet gray">
                            <div class="left">
                                <p>Pin, Sạc:</p>
                            </div>
                            <div class="right">
                                <p>4500 mAh44 W</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            </div>
            <div class="specP">
                <h3>Giá sản phẩm: </h3> 
                <span class="price">
                    <asp:Label ID="lbGia" runat="server" Text=""></asp:Label>₫ </span>
                <div class="KhuyenMai">
                    <div class="kmTop">
                        <span>Khuyến mãi </span>
                        <p>Giá và khuyến mãi dự kiến áp dụng đến 23:59 | 25/10</p>
                    </div>
                    <div class="kmBot">
                        <p>+ Giảm 20% gói Bảo hành Mở rộng 12</p>
                        <p>+ Nhập mã SPPMWG giảm 10% tối đa 100.000đ khi thanh toán qua Ví ShopeePay </p>
                        <p>+ Nhập mã TGDD giảm 4% tối đa 200.000đ cho đơn hàng từ 500.000đ trở lên khi thanh toán qua Ví Moca trên ứng dụng Grab </p>
                        <p>+ Nhập mã MWG18 giảm 3% tối đa 100.000đ khi thanh toán quét QRcode qua App của ngân hàng </p>
                    </div>
                </div>
<%--                <input type="button" style="width: 460px;height: 50px; background-color: #fb6e2e; color: white; margin-bottom: 5px;" value="MUA NGAY">--%>
                <asp:Button ID="bMuaNgay" runat="server" Text="Mua ngay" style="width: 460px;height: 50px; background-color: #fb6e2e; color: white; margin-bottom: 5px;" OnClick="bMuaNgay_Click"/>
                <div id="button">
                    <input type="button" value="MUA TRẢ GÓP 0.5%" style="width: 230px;height: 50px;">
                    <input type="button" style="width: 220px;height: 50px; margin-left: 10px;" value="TRẢ GÓP  QUA THẺ">
                </div>

                <p style="font-size: 14px;text-align: center;">Gọi đặt mua 1800.1060 (7:30 - 22:00)</p>
                <div class="KhuyenMai">
                    <div class="kmTop">
                        <span>16 ưu đãi thêm</span>
                        <p>Dự kiến áp dụng đến 23:00 | 31/10</p>
                    </div>
                    <div class="kmBot">
                        <p>+ Tai nghe giảm đến 40%.  Xem chi tiết</p>
                        <p>+ Mua kèm Pin sạc dự phòng giảm 20%</p>
                        <p>+ Tặng cho khách lần đầu mua hàng online tại web</p>
                        <p>+ 100.000đ áp dụng đơn hàng từ 500.000đ</p>
                        <p>+ Đại siêu thị Online với 15.000 sản phẩm tiêu dùng, thịt, cá, rau…</p>
                        <p>+ FREEship đơn hàng từ 300.000đ hoặc thành viên VÀNG</p>
                    </div>
                </div>
                
            </div>
        </div>
      </div>

        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
      <script src="../../bootstrap-4.6.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
