<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="THAIHOA_FMS.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scrollTableBody.js"></script>
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
                <div class="col-lg-2">
                    <div class="row">
                        <div class="menu-wrap">
                            <div class="list-group">
                                <a href="#" class="list-group-item" id="daily">Daily<span class="badge">14</span></a>
                                <a href="#" class="list-group-item" id="my-task">My Task</a>
                                <a href="#" class="list-group-item" id="calendar">Calendar</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="row" style="background-color: #ffffff">
                        <div class="content-wrap" id="content-wrap">
                            <div class="bar">USER DAILY</div>
                            <div class="title">Daily</div>
                            <div class="col-lg-8">
                                <div class="row" style="background-color: #ffffff">
                                    <div class="detail-task">
                                        <div class="title">Detailed Task</div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <strong>Name: </strong><span id="task-name"></span>
                                                <br />
                                                <strong>Start: </strong><span id="task-start"></span>
                                                <br />
                                                <strong>Deadline: </strong><span id="task-deadline"></span>
                                                <br />
                                                <strong>Location: </strong><span id="task-location"></span>
                                                <br />
                                                <strong>Cost: </strong><span id="task-cost"></span><i>vnđ</i><br />
                                                <strong>Resource: </strong><span id="task-resource"></span>
                                                <br />
                                            </div>
                                            <div class="col-md-6">
                                                <img id="task-img" src="Images/hoga.jpg" class="img-responsive img-thumbnail" style="max-height: 200px; max-width: 300px" />
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="title">Accepted</div>
                                        <div class="row" id="user-accept">
                                            <div class="col-md-3">
                                                <img src="Images/chavis-user.jpg" style="height: 40px; width: 40px" />
                                                <p>Mr. Chavis</p>
                                            </div>
                                            <div class="col-md-3">
                                                <img src="Images/mrtoan.jpg" style="height: 40px; width: 40px" />
                                                <p>Mr. Toan</p>
                                            </div>
                                            <div class="col-md-3">
                                                <img src="Images/lan.jpg" style="height: 40px; width: 40px" />
                                                <p>Ms. Lan</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end col-lg-8-->
                            <div class="col-lg-4">
                                <div class="row" style="background-color: #ffffff">
                                    <div class="daily-confirm">
                                        <div class="title">Daily confirm</div>
                                        <div class="table-responsive">
                                            <table id="daily-confirm-table" class="table table-bordred table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Content</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <%
                                                        for (int i = 0; i < confirm_task_list.Rows.Count; i++)
                                                        {
                                                            //Response.Write("<tr id=\"" + confirm_task_list.Rows[i]["id_pct"] + "\"></tr>\n");
                                                            Response.Write("<tr>\n");
                                                            Response.Write("<td>" + confirm_task_list.Rows[i]["id_pct"] + "</td>\n");
                                                            Response.Write("<td>" + confirm_task_list.Rows[i]["cont"] + "</td>\n");
                                                            //Response.Write("<td>");
                                                            //Response.Write("<button class=\"btn btn-primary btn-xs\"><span class=\"glyphicon glyphicon-pencil\"></span></button>");
                                                            //Response.Write("</td>\n");

                                                            Response.Write("</tr>\n");
                                                        }
                                                    %>
                                                    <!--   <tr class="info">
                                                        <td>Repair PC</td>
                                                        <td>
                                                            <button class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button>
                                                        </td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>Build Tower</td>
                                                        <td>
                                                            <button class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button>
                                                        </td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>Buy Car</td>
                                                        <td>
                                                            <button class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button>
                                                        </td>
                                                    </tr>-->
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="task-list">
                                        <div class="title">Task List</div>
                                        <div class="table-responsive">
                                            <table id="task-list-table" class="table table-bordred table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Name Task</th>
                                                        <th>Location</th>
                                                        <th>Progress</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="warning">
                                                        <td>Report</td>
                                                        <td></td>
                                                        <td>Chưa hoàn thành</td>
                                                    </tr>
                                                    <tr class="danger">
                                                        <td>Clean Car</td>
                                                        <td></td>
                                                        <td>Trễ 3 ngày</td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>Meeting</td>
                                                        <td></td>
                                                        <td>Hoàn thành</td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>Meeting</td>
                                                        <td></td>
                                                        <td>Hoàn thành</td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>Meeting</td>
                                                        <td></td>
                                                        <td>Hoàn thành</td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>Meeting</td>
                                                        <td></td>
                                                        <td>Hoàn thành</td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>Meeting</td>
                                                        <td></td>
                                                        <td>Hoàn thành</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
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
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>
</html>
