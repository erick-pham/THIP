<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="THAIHOA_FMS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Khách Hàng</title>

    <link href="Styles/bootstrap.css" rel="stylesheet" />


    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <%--<script src="js/highcharts.js"></script>
    <script src="js/wheelzoom.js"></script>
    <script src="js/Chart.js"></script>
    <script src="js/Customer.js"></script>--%>
    <link href="Styles/Customer.css" rel="stylesheet" />
</head>
<body>


    <form id="form1" runat="server">

        <div class="wrapper">
            <div class="row">
                
                   <%-- <nav class="navbar navbar-inverse navbar-fixed-top" id="My-nav-menu">
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
                                    <li><a href="#">Tuyển dụng</a></li>
                                    <li><a href="#">Giới thiệu</a></li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="#"><span class="fa fa-user"></span>Xin chào: Bê Tông Bách Khoa</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-log-out"></span>Login</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>--%>
            
            </div>
            <div class="row">
                <div class="col-md-6">
                    <%--<asp:Chart ID="chtNBAChampionships" runat="server" Palette="Fire" class="img-responsive">

                        <Series>
                            <asp:Series Name="Championships" YValueType="Int32" ChartType="Column" ChartArea="MainChartArea">
                                <Points>
                                    <asp:DataPoint AxisLabel="Celtics" YValues="17" />
                                    <asp:DataPoint AxisLabel="Lakers" YValues="15" />
                                    <asp:DataPoint AxisLabel="Bulls" YValues="6" />
                                    <asp:DataPoint AxisLabel="Spurs" YValues="4" />
                                    <asp:DataPoint AxisLabel="76ers" YValues="3" />
                                    <asp:DataPoint AxisLabel="Pistons" YValues="3" />
                                    <asp:DataPoint AxisLabel="Warriors" YValues="3" />
                                </Points>
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="MainChartArea">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Name="Title1" Text="Điện">
                            </asp:Title>
                            <asp:Title Name="Title2" Text="Nước">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>--%>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
