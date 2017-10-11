<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TLookSinformation.aspx.cs" Inherits="Teacher_TLookSinformation" %>

<!DOCTYPE html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>GREEN学生管理系统</title>
<meta name="description" content="。。。。" />
<meta name="viewport" content="......" />
<link rel="stylesheet" href="css/app.v2.css" type="text/css" />
<link rel="stylesheet" href="js\calendar/bootstrap_calendar.css" type="text/css" cache="false" />
<!--[针对 IE 9]> <script src="js/ie/html5shiv.js" cache="false"></script> <script src="js/ie/respond.min.js" cache="false"></script> <script src="js/ie/excanvas.js" cache="false"></script> <![endif]-->
    <style type="text/css">
        .auto-style10 {
            width: 179px;
        }
        .auto-style12 {
            width: 209px;
        }
        .auto-style13 {
            width: 139px;
        }
        .auto-style14 {
            width: 239px;
        }
        .auto-style15 {
            width: 238px;
        }
        .auto-style16 {
            width: 138px;
        }
        .auto-style17 {
            font-size: large;
        }
    </style>
</head>
<body>
<section class="vbox">
  <header class="bg-dark dk header navbar navbar-fixed-top-xs">
    <div class="navbar-header aside-md"> <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen" data-target="#nav"> <i class="fa fa-bars"></i> </a> <a href="#" class="navbar-brand" data-toggle="fullscreen"><img src="img/logo1.png" class="m-r-sm">Green学生管理</a> <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".nav-user"> <i class="fa fa-cog"></i> </a> </div>     
    
  </header>
  <section>
    <section class="hbox stretch"> 
<!-- .aside -->
      <aside class="bg-dark lter aside-md hidden-print" id="nav">
        <section class="vbox">
          
          <section class="w-f scrollable">
            <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="5px" data-color="#333333"> 
               <!-- 左侧导航 -->
              <nav class="nav-primary hidden-xs">
                <ul class="nav">
                  <li class="active"> <a href="teacher.aspx" class="active"> <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span>Green主页</span> </a> </li>
                  <li ><a href="TchangePwd.aspx"><i class="fa fa-columns icon"> <b class="bg-warning"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i></span><span>修改密码</span></a>
                  <!--  <ul class="nav lt">
                     <li > <a href="....." > <i class="fa fa-angle-right"></i> <span>这是一个范例</span> </a> </li> 
                      
                    </ul>-->
                  </li>
                  <li > <a href="TLookinformation.aspx" > <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>个人信息查询</span> </a>
                <!--     <ul class="nav lt">
                     
                       <li > <a href="......" > <i class="fa fa-angle-right"></i> <span>干死RY</span> </a> </li> 
                     
                    </ul>-->
                  </li>
                  <li > <a href="TLookSinformation.aspx" > <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>查看学生信息</span> </a>
                <!--   <ul class="nav lt">
                      
                        <li > <a href="....." > <i class="fa fa-angle-right"></i> <span>这是一个范例</span> </a> </li> 
                      
                    </ul>-->
                  </li>
                   <li > <a href="TLookSGrade.aspx" > <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>学生成绩管理</span> </a>
            <!--     <ul class="nav lt">
                           
                          <li > <a href="TLookSGrade.aspx" > <i class="fa fa-angle-right"></i> <span>查看学生成绩</span> </a> </li> 
                           <li > <a href="....." > <i class="fa fa-angle-right"></i> <span>录入学生成绩</span> </a> </li> 
                    </ul>-->
                  </li>    
                </ul>
              </nav>
               </div>
          </section>
          <footer class="footer lt hidden-xs b-t b-dark">
            <div id="chat" class="dropup">
              <section class="dropdown-menu on aside-md m-l-n">
                <section class="panel bg-white">
                  <header class="panel-heading b-b b-light">Active chats</header>
                  <div class="panel-body animated fadeInRight">
                    <p class="text-sm">No active chats.</p>
                    <p><a href="#" class="btn btn-sm btn-default">Start a chat</a></p>
                  </div>
                </section>
              </section>
            </div>
            <div id="invite" class="dropup">
              <section class="dropdown-menu on aside-md m-l-n">
                <section class="panel bg-white">
                  <header class="panel-heading b-b b-light"> John <i class="fa fa-circle text-success"></i> </header>
                  <div class="panel-body animated fadeInRight">
                    <p class="text-sm">No contacts in your lists.</p>
                    <p><a href="#" class="btn btn-sm btn-facebook"><i class="fa fa-fw fa-facebook"></i> Invite from Facebook</a></p>
                  </div>
                </section>
              </section>
            </div>
            <a href="#nav" data-toggle="class:nav-xs" class="pull-right btn btn-sm btn-dark btn-icon"> <i class="fa fa-angle-left text"></i> <i class="fa fa-angle-right text-active"></i> </a>
            <div class="btn btn-icon btn-sm btn-dark">
              <a href="../login.aspx" > <i class=".nav-primary ul.nav>li>a"></i> <span>退出</span> </a> 
            </div>
          </footer>
        </section>
      </aside>
      <section id="content">
        <section class="vbox">
          <section class="scrollable padder">
            <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
              <li><a href="teacher.aspx"><i class="fa fa-home"></i> Home</a></li>
              <li class="active">主页</li>
            </ul>
            <div class="m-b-md">
              <h3 class="m-b-none">查看所教学生信息</h3>
                <form runat="server">
                    <span class="auto-style17">查询条件</span><asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>学号</asp:ListItem>
                        <asp:ListItem>姓名</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
                    <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" DataKeyNames="id" DataSourceID="SqlDataSource2" AllowPaging="True" Width="514px">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                         <asp:BoundField DataField="stuNum" HeaderText="学号" SortExpression="stuNum" />
                         <asp:BoundField DataField="stuName" HeaderText="姓名" SortExpression="stuName" />
                         <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="TLookSinformation.aspx?id={0}"  ControlStyle-ForeColor="#00cc00" NavigateUrl="~/Teacher/TLookSinformation.aspx" Text="更多信息" />
                     </Columns>
                     <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                 </asp:GridView>



                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [stuNum], [stuName], [id] FROM [Stu_information]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Stu_information] WHERE [id] = @original_id AND (([stuNum] = @original_stuNum) OR ([stuNum] IS NULL AND @original_stuNum IS NULL)) AND (([stuName] = @original_stuName) OR ([stuName] IS NULL AND @original_stuName IS NULL))" InsertCommand="INSERT INTO [Stu_information] ([stuNum], [stuName]) VALUES (@stuNum, @stuName)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Stu_information] SET [stuNum] = @stuNum, [stuName] = @stuName WHERE [id] = @original_id AND (([stuNum] = @original_stuNum) OR ([stuNum] IS NULL AND @original_stuNum IS NULL)) AND (([stuName] = @original_stuName) OR ([stuName] IS NULL AND @original_stuName IS NULL))">
                     <DeleteParameters>
                         <asp:Parameter Name="original_id" Type="Int32" />
                         <asp:Parameter Name="original_stuNum" Type="String" />
                         <asp:Parameter Name="original_stuName" Type="String" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="stuNum" Type="String" />
                         <asp:Parameter Name="stuName" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="stuNum" Type="String" />
                         <asp:Parameter Name="stuName" Type="String" />
                         <asp:Parameter Name="original_id" Type="Int32" />
                         <asp:Parameter Name="original_stuNum" Type="String" />
                         <asp:Parameter Name="original_stuName" Type="String" />
                     </UpdateParameters>
             </asp:SqlDataSource>
             <br />
             <table border="1" style="width: 100%; height: 248px; ">
                 <tr>
                     <td align="center" class="auto-style13">学号</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label1" runat="server" ForeColor="#0000ff" style="font-size: large" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style13">姓名</td>
                     <td align="center" class="auto-style15">
                         <asp:Label ID="Label2" runat="server" ForeColor="#000000" style="font-size: large" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style16">性别</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label3" runat="server" ForeColor="#ff0000" style="font-size: large" Text="Label"></asp:Label>
                     </td>
                     <td align="left" class="auto-style12" rowspan="5" valign="top">
                         <asp:Image ID="Image1" runat="server" Height="256px" Width="218px" />
                     </td>
                 </tr>
                 <tr class="auto-style10">
                     <td align="center" class="auto-style13">出生日期</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label4" runat="server" ForeColor="#15c23c" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style13">民族</td>
                     <td align="center" class="auto-style15">
                         <asp:Label ID="Label5" runat="server" ForeColor="#00ffcc" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style16">籍贯</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label6" runat="server" ForeColor="#003300" Text="Label"></asp:Label>
                     </td>
                 </tr>
                 <tr class="auto-style10">
                     <td align="center" class="auto-style13">政治面貌</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label7" runat="server" ForeColor="#ff00ff" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style13">身份证号</td>
                     <td align="center" class="auto-style15">
                         <asp:Label ID="Label8" runat="server" ForeColor="#99cc00" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style16">学制</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label9" runat="server" ForeColor="#ff9900" Text="Label"></asp:Label>
                     </td>
                 </tr>
                 <tr class="auto-style10">
                     <td align="center" class="auto-style13">班级</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label10" runat="server" ForeColor="#993333" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style13">院系</td>
                     <td align="center" class="auto-style15">
                         <asp:Label ID="Label11" runat="server" ForeColor="#660066" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style16">入学时间</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label12" runat="server" ForeColor="#666633" Text="Label"></asp:Label>
                     </td>
                 </tr>
                 <tr class="auto-style10">
                     <td align="center" class="auto-style13">联系电话</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label13" runat="server" ForeColor="#336699" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style13">E-mail</td>
                     <td align="center" class="auto-style15">
                         <asp:Label ID="Label14" runat="server" ForeColor="#403150" Text="Label"></asp:Label>
                     </td>
                     <td align="center" class="auto-style16">详细地址</td>
                     <td align="center" class="auto-style14">
                         <asp:Label ID="Label15" runat="server" ForeColor="#ff6600" Text="Label"></asp:Label>
                     </td>
                 </tr>
             </table>

         </form>   
            
            </div>
          </section>
        </section>
        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a> </section>
      <aside class="bg-light lter b-l aside-md hide" id="notes">
        <div class="wrapper">Notification</div>
      </aside>
    </section>
  </section>
</section>
<script src="js/app.v2.js"></script> <!-- Bootstrap -->  <script src="js/charts/easypiechart/jquery.easy-pie-chart.js" cache="false"></script> <script src="js/charts/sparkline/jquery.sparkline.min.js" cache="false"></script> <script src="js/charts/flot/jquery.flot.min.js" cache="false"></script> <script src="js/charts/flot/jquery.flot.tooltip.min.js" cache="false"></script> <script src="js/charts/flot/jquery.flot.resize.js" cache="false"></script> <script src="js/charts/flot/jquery.flot.grow.js" cache="false"></script> <script src="js/charts/flot/demo.js" cache="false"></script> <script src="js/calendar/bootstrap_calendar.js" cache="false"></script> <script src="js/calendar/demo.js" cache="false"></script> <script src="js/sortable/jquery.sortable.js" cache="false"></script>
</body>
</html>
