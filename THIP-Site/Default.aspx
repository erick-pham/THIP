<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Khách Hàng</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="MyJS/jquery-3.2.1.min.js"></script>
    <script src="MyJS/bootstrap.min.js"></script>
    <script src="MyJS/highcharts.js"></script>
    <script src="MyJS/Customer.js"></script>
    <script src="MyJS/Chart.js"></script>
    <%--<script src="MyJS/ajax.js"></script>--%>
    <link href="Content/Style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="row">
                <div class="img-responsive">
                    <img src="../Images/banner.jpg" class="my-banner" />
                </div>
            </div>
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
                        <div class="cus-location">
                            <div class="img-responsive">
                                <img src="Images/map.png" class="location-map" />
                            </div>
                            <hr />
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
                                                <small>Tiêu thụ(m3): 100</small><br />
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
                                                <small>Tiêu thụ(m3): 100</small><br />
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
                                <div class="chart-wrap" id="chart-power">
                                </div>
                                <div class="chart-wrap" id="chart-water">
                                    <script> $(function () {
     Highcharts.chart('chart-cod', {
         chart: {
             type: 'line',
         },
         title: {
             align: "center",
             floating: false,
             margin: 15,
             style: { "color": "#333333", "fontSize": "16px" },
             text: 'Chỉ số COD nước thải',
         },
         xAxis: {
             categories: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6',
                 'T7', 'T8', 'T9', 'T10', 'T11', 'T12']
         },
         yAxis: {
             title: {
                 text: 'mg/l'
             },
             plotLines: [{
                 value: 0,
                 width: 1,
                 color: '#808080'
             }]
         },
         //tooltip: {
         //    valueSuffix: 'mg/l'
         //},
         //legend: {
         //    layout: 'vertical',
         //    align: 'right',
         //    verticalAlign: 'middle',
         //    borderWidth: 0
         //},
         plotOptions: {
             line: {
                 dataLabels: {
                     enabled: true
                 },
                 enableMouseTracking: false
             }
         },
         series: [{
             name: 'COD Index',
             data: [<%=Powerdata[0]%>, <%=Powerdata[1]%>,<%=Powerdata[2]%>,<%=Powerdata[3]%>,<%=Powerdata[4]%>,<%=Powerdata[5]%>,<%=Powerdata[6]%>,<%=Powerdata[7]%>,<%=Powerdata[8]%>,<%=Powerdata[9]%>,<%=Powerdata[10]%>,<%=Powerdata[11]%>]
         }]
     });

 });
                                    </script>

                                </div>
                                <div class="chart-wrap" id="chart-cod">
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
            </footer>
            <div class="feedback-box" id="fback-box">
                <div class="panel panel-fback">
                    <div class="panel-heading">
                        Phản hồi
                        <span class="glyphicon glyphicon-chevron-up" id="chatPopup" style="float: right; cursor: pointer;"></span>
                    </div>
                </div>
                <div class="pesan-box" id="psan_box">
                    <span>Nội dung: <small style="color: red; font-size: 12px">(*)Bắt buộc</small></span>
                    <textarea class="form-control" rows="3" placeholder="Chúng tôi có thể giúp gì cho bạn!" id="fback-content"></textarea>
                    <small>Nhập thông tin liên hệ để chúng tôi phục vụ bạn nhanh chóng và tốt hơn!</small>
                    <input class="form-control" placeholder="Tên & số điện thoại" type="text" id="fullname" />
                    <hr />
                    <small class="fback-mess" id="fback-mess"></small>
                    <button type="button" class="fback-button" id="btn-send-feadback">Gửi</button>
                </div>
            </div>
            <!-- end livechat -->
        </div>
        <!--end wrapper-->
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <% Response.Write(" toàn\" "); %>
        <script>
            $(function () {
                $.ajax({
                    type: "POST",
                    url: "Default.aspx/GetData",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var names = response.d;
                        alert(names);
                    },
                    failure: function (response) {
                        alert(response.d);
                    }
                });
            });
        </script>
    </form>
</body>
</html>
