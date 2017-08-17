<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="THAIHOA_FMS.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/Manager.js"></script>

    <link href="Styles/bootstrap.css" rel="stylesheet" />
    <link href="Styles/Manager.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="my-header">
                    <div class="logo"></div>
                    <div class="user">
                        <div class="avatar"></div>
                        <a href="#"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="row">
                        <div class="menu-wrap">
                            <div class="list-group">
                                <a href="#" class="list-group-item"><i class="fa fa-comment-o"></i>Daily<span class="badge">14</span></a>
                                <a href="#" class="list-group-item"><i class="fa fa-comment-o"></i>My Task</a>
                                <a href="#" class="list-group-item"><i class="fa fa-search"></i>Calendar</a>
                                <a href="#" class="list-group-item"><i class="fa fa-user"></i>Lorem ipsum</a>
                                <a href="#" class="list-group-item"><i class="fa fa-folder-open-o"></i>Lorem ipsum <span class="badge">14</span></a>
                                <a href="#" class="list-group-item"><i class="fa fa-bar-chart-o"></i>Lorem ipsumr <span class="badge">14</span></a>
                                <a href="#" class="list-group-item"><i class="fa fa-envelope"></i>Lorem ipsum</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row" style="background-color: #ffffff">
                        <div class="content-wrap">
                            <div class="bar">Managerment Page</div>
                            <div class="title">Daily</div>
                            <div class="col-lg-8">
                                <div class="row" style="background-color: #ffffff">
                                    <div class="detail-task">
                                        <div class="title">Detailed Task</div>
                                        <p>ddaya laf detail task</p>
                                        <p>ddaya laf detail task</p>
                                        <p>ddaya laf detail task</p>
                                        <p>ddaya laf detail task</p>
                                        <p>ddaya laf detail task</p>
                                        <p>ddaya laf detail task</p>
                                        <p>ddaya laf detail task</p>

                                        <p>ddaya laf detail task</p>

                                        <p>ddaya laf detail task</p>
                                        <hr />
                                        <div class="title">Accepted</div>
                                    </div>
                                </div>
                            </div>
                            <!--end col-lg-8-->
                            <div class="col-lg-4">
                                <div class="row" style="background-color: #ffffff">
                                    <div class="daily-confirm">
                                        <div class="title">Daily confirm</div>
                                        <p>ddaya laf confirm task</p>
                                        <p>ddaya laf confirm task</p>
                                        <p>ddaya laf confirm task</p>
                                        <p>ddaya laf confirm task</p>

                                        <p>ddaya laf confirm task</p>
                                        <p>ddaya laf confirm task</p>
                                        <p>ddaya laf confirm task</p>
                                        <p>ddaya laf confirm task</p>
                                        <p>ddaya laf confirm task</p>
                                    </div>
                                    <div class="task-list">
                                        <div class="title">Task List</div>
                                        <p>ddaya laf tassk list</p>
                                        <p>ddaya laf tassk list</p>
                                        <p>ddaya laf tassk list</p>
                                        <p>ddaya laf tassk list</p>
                                        <p>ddaya laf tassk list</p>
                                        <p>ddaya laf tassk list</p>

                                        <p>ddaya laf tassk list</p>
                                        <p>ddaya laf tassk list</p>

                                        <p>ddaya laf tassk list</p>
                                    </div>
                                </div>
                            </div>
                            <!--end col-lg-8-->
                        </div>
                        <%--                    <div class="table-responsive">
                        <table id="Taskstable" class="table table-bordred table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Created Time</th>
                                    <th>Name Task</th>
                                    <th>Content</th>
                                    <th>Cost</th>
                                    <th>Create by</th>
                                    <th>Accept</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="info" style="cursor: pointer;">
                                    <td>Task101</td>
                                    <td><%=DateTime.Now.ToShortDateString() %></td>
                                    <td>Repair PC</td>
                                    <td>Repair PC</td>
                                    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
                                    <td>Kuga</td>
                                    <td>
                                        <p data-placement="top" data-toggle="tooltip" title="Accept">
                                            <button class="btn btn-primary btn-xs" data-title="Accept" data-toggle="modal" data-target="#Accept"><span class="glyphicon glyphicon-pencil"></span></button>
                                        </p>
                                    </td>
                                </tr>
                                <tr class="active" style="cursor: pointer;">
                                    <td>Task101</td>
                                    <td><%=DateTime.Now.ToShortDateString() %></td>
                                    <td>Repair PC</td>
                                    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
                                    <td>Kuga</td>
                                    <td>
                                        <p data-placement="top" data-toggle="tooltip" title="Accept">
                                            <button class="btn btn-primary btn-xs" data-title="Accept" data-toggle="modal" data-target="#Accept"><span class="glyphicon glyphicon-pencil"></span></button>
                                        </p>
                                    </td>
                                </tr>
                                <tr class="active" style="cursor: pointer;" data-toggle="modal" data-target="#login-modal">
                                    <td>Task101</td>
                                    <td><%=DateTime.Now.ToShortDateString() %></td>
                                    <td>Repair PC</td>
                                    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
                                    <td>Kuga</td>
                                    <td>
                                        <p data-placement="top" data-toggle="tooltip" title="Accept">
                                            <button class="btn btn-primary btn-xs" data-title="Accept" data-toggle="modal" data-target="#Accept"><span class="glyphicon glyphicon-pencil"></span></button>
                                        </p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--end my-tasks-table-->
                    <div class="modal fade" id="myModal">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" style="float: left">&times</button>
                                </div>
                                <div class="modal-body">
                                    <div class="detail-task-item">
                                        sdfsdf
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--<div class="sidebar-detail-daily" id="sb-daily">
                        ád
                        ạdg
                        ạdgh
                    </div>-->
                </div>
                <!--end my-tasks-->--%>
                    </div>
                    <!--end row-->
                </div>
                <!--end col-lg-9-->
            </div>
        </div>
    </form>
</body>
</html>
