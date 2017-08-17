<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="THAIHOA_FMS.Customer" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Khách Hàng</title>
    <link href="Styles/bootstrap.css" rel="stylesheet" />
    <link href="Styles/Customer.css" rel="stylesheet" />

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/highcharts.js"></script>
    <script src="js/wheelzoom.js"></script>
    <script src="js/Chart.js"></script>
    <script src="js/Customer.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
<%--            <div class="row">
                <div class="img-responsive">
                    <img src="../Images/banner.jpg" class="img-responsive" />
                </div>
            </div>--%>
            <div class="row">
                <div class="col-lg-2" id="left-menu-wrap">
                    <div class="navbar navbar-inverse" id="my-navbar">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="~/">THIP</a>
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse" style="padding: 0;">
                            <div class="nav navbar-nav" style="width: 100%;" id="menu-block">
                                <div class="menu-group">
                                    <div class="title">Lô thuê</div>
                                    <div class="menu-group-content">
                                        <ul>
                                            <li><a href="/">Lô A1</a></li>
                                            <li><a href="/">Lô A21</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="menu-group">
                                    <div class="title">Tuyển dụng</div>
                                    <div class="menu-group-content">
                                        <ul>
                                            <li><a href="/">Home</a></li>
                                            <li><a href="/">Contact</a></li>
                                            <li><a href="/">Contact</a></li>
                                            <li><a href="/">Contact</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-lg-10" id="content-wrap">
                    <div class="customer-block">
                        <div class="bar">Managerment Dashboard</div>
                        <div class="maps">
                            <img class="img-responsive zoom" src="../Images/map-min.png" alt="Daisy!" style="width: 100%; height: 100%;" id="map-pot" />
                            <script src="wheelzoom.js"></script>
                            <script>
                                wheelzoom(document.querySelector('img.zoom'));
                            </script>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="cost-wrap">
                                    <button class="btn btn-default btn-save-bill" id="btnSaveBill">
                                        <img class="img-responsive" src="Images/icon-pdf.png" />
                                    </button>
                                    <button class="btn btn-default btn-print-bill" id="btnPrintBill">
                                        <img class="img-responsive" src="Images/icon-printer.png" />
                                    </button>
                                    <div id="Overallcost">
                                        <h4 style="font-weight: bold;">Chi phí: Tháng 5-2017</h4>
                                        <p>Phí quản lý định kỳ: 4.000.000 vnđ</p>
                                        <p>Phí phát sinh: 2.000.000 vnđ</p>
                                        <p>Tổng thanh toán: 6.000.000 vnđ</p>
                                        <p>Trạng thái: <span style="color: red">Còn công nợ</span></p>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6" id="cPower-wrap">
                                            <div class="cost-detail">
                                                <img src="/Images/icon-power.png" style="width: 40px; float: right" />
                                                <div class="name-cost">Chỉ số điện</div>
                                                <small>Tháng 5: 200</small><br />
                                                <small>Tháng 4: 100</small><br />
                                                <small>Tiêu thụ (KWh): 100</small><br />
                                                <small>Phí: 300.000 vnđ</small><br />
                                                <button type="button" class="btn btn-confirm-cost" id="btnConfirm-Power">
                                                    <img src="Images/icon-check.png" style="width: 20px; height: 20px" />Xác nhận
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6" id="cWater-wrap">
                                            <div class="cost-detail">
                                                <img src="/Images/icon-cleanWater.png" style="width: 40px; float: right" />
                                                <div class="name-cost">Chỉ số nước cấp</div>
                                                <small>Tháng 5: 200</small><br />
                                                <small>Tháng 4: 100</small><br />
                                                <small>Tiêu thụ(m&sup3): 100</small><br />
                                                <small>Phí: 300.000 vnđ</small><br />
                                                <button type="button" class="btn btn-confirm-cost" id="btnConfirm-CleanWater">
                                                    <img src="Images/icon-check.png" style="width: 20px; height: 20px" />Xác nhận
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6" id="wWater-wrap">
                                            <div class="cost-detail">
                                                <img src="/Images/icon-wasteWater.png" style="width: 40px; float: right" />
                                                <div class="name-cost">Chỉ số nước thải</div>
                                                <small>Tháng 5: 200</small><br />
                                                <small>Tháng 4: 100</small><br />
                                                <small>Tiêu thụ(m&#179): 100</small><br />
                                                <small>Phí: 300.000 vnđ</small><br />
                                                <button type="button" class="btn btn-confirm-cost" id="btnConfirm-WasteWater">
                                                    <img src="Images/icon-check.png" style="width: 20px; height: 20px" />Xác nhận
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6" id="Cod-wrap">
                                            <div class="cost-detail">
                                                <img src="/Images/icon-cod.png" style="width: 40px; float: right" />
                                                <div class="name-cost">COD nước thải</div>
                                                <small>Tháng 5: 200</small><br />
                                                <small>Tháng 4: 100</small><br />
                                                <small>Chỉ số COD: 110mg/l</small><br />
                                                <small>Hệ số K: 1.2</small><br />
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end row -->
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-md-6">
                                <h4 style="font-weight: bold; text-align: center;">Biểu đồ theo dõi theo tháng</h4>
                                <div class="chart-wrap" id="chartpower">
                                </div>
                                <div class="chart-wrap" id="chartwater">
                                </div>
                                <div class="chart-wrap" id="chartcod">
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
                    </div>
                </div>
                <!-- end col-->
            </div>
            <!--end row-->
            <hr />
            <footer>
                <p class="text-left">&copy;2017 - KHU CÔNG NGHIỆP THÁI HÒA</p>
                <label id="lbTime"></label>
            </footer>
            <div class="feedback-box" id="fback-box">
                <div class="panel-fback" style="cursor: pointer;" id="chatPopup">



                    <p>
                        Gửi phản hồi<i class="glyphicon glyphicon-chevron-up" id="iconPopup" style="float: right; margin-left: 5px"></i>
                    </p>

                </div>
                <div class="pesan-box" id="psan_box">
                    <label style="font-size: 12px">Họ tên</label><small style="color: red; font-size: 12px">(*)Bắt buộc</small>
                    <textarea class="form-control" rows="5" placeholder="Chúng tôi có thể giúp gì cho bạn!" id="fback-content"></textarea>
                    <small>Liên hệ nhận kết quả phản hồi.</small>
                    <label style="font-size: 12px">Số điện thoại:</label>
                    <input class="form-control" placeholder="Tên & số điện thoại" type="text" id="fullname" />
                    <label style="font-size: 12px">Email:</label>
                    <input class="form-control" placeholder="Tên & số điện thoại" type="text" id="phone" />
                    <hr />
                    <small class="fback-mess" id="fback-mess"></small>
                    <button type="button" class="fback-button" id="btn-send-feadback">Gửi</button>
                </div>
            </div>
            <!-- end livechat -->
        </div>
        <!--end wrapper-->
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>
</html>
