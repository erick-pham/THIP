<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer2.aspx.cs" Inherits="THAIHOA_FMS.Customer2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/highcharts.js"></script>
    <script src="js/Customer.js"></script>
    <script src="js/Chart.js"></script>
    <link href="Styles/bootstrap.css" rel="stylesheet" />
    <link href="Styles/Customer2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="wrap-navbar-menu">
                <nav class="navbar navbar-inverse navbar-fixed-top" id="My-nav-menu">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">THIP</a>

                        </div>
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav">
                                <li><a href="#">Trang chủ</a></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Quản lý chi phí<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Lô A101</a></li>
                                        <li><a href="#">Lô A102</a></li>
                                        <li><a href="#">Lô B203</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Bản đồ</a></li>
                                <li><a href="#">Tuyển dụng</a></li>
                                <li><a href="#">Giới thiệu</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="#"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="wrap-content">
                <div class="block-cost">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="cost-wrap">

                                <div id="Overallcost">
                                    <h4 style="font-weight: bold;">Chi phí: Tháng 5-2017</h4>
                                    <p>Phí quản lý định kỳ: 4.000.000 vnđ</p>
                                    <p>Phí phát sinh: 2.000.000 vnđ</p>
                                    <p>Tổng thanh toán: 6.000.000 vnđ</p>
                                    <p>Trạng thái: <span style="color: red">Còn công nợ</span></p>

                                    <button type="button" class="btn btn-default btn-save-bill" id="btnSaveBill">
                                        <img class="img-responsive" src="Images/icon-pdf.png" />
                                    </button>

                                    <button class="btn btn-default btn-print-bill" id="btnPrintBill">
                                        <img class="img-responsive" src="Images/icon-printer.png" />
                                    </button>
                                </div>
                                <hr />
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
                    </div>
                </div>
            </div>
            <div class="row">
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
            </div>
        </div>
    </form>
</body>
</html>
