<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ATinformation.aspx.cs" Inherits="Admin_ATinformation" %>
 <%@ Register src="uc/Area.ascx" tagname="area" tagprefix="uc1" %>
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
        .auto-style1 {
            font-size: large;
        }
      .yy
        {
            position: relative;
            display: inline-block;
        }

        .mm {
            display: none;
            position: absolute;
        }
      .yy:hover .mm{
               display: block;
                 }
        }
        .新建样式1 {
            color: #FF0000;
        }
    </style>
</head>
<body>
<section class="vbox">
  <header class="bg-dark dk header navbar navbar-fixed-top-xs">
    <div class="navbar-header aside-md"> <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen" data-target="#nav"> <i class="fa fa-bars"></i> </a> <a href="#" class="navbar-brand" data-toggle="fullscreen"><img src="img/logo1.png" class="m-r-sm">Green学生管理</a> <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".nav-user"> <i class="fa fa-cog"></i> </a> </div>     
    </ul>
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
                  <li class="active"> <a href="admin.aspx" class="active"> <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span>Rreen主页</span> </a> </li>
                  <li > <a href="...." > <i class="fa fa-columns icon"> <b class="bg-warning"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>账号管理</span> </a>
                    <ul class="nav lt">
                      <li > <a href="adminAdd.aspx" > <i class="fa fa-angle-right"></i> <span>添加管理员</span> </a> </li>
                      <li > <a href="adminDeletE.aspx" > <i class="fa fa-angle-right"></i> <span>修改删除管理员</span> </a> </li>
                         <li > <a href="AteacherAdd.aspx" > <i class="fa fa-angle-right"></i> <span>添加教师</span> </a> </li>
                      <li > <a href="AteacherDeletE.aspx" > <i class="fa fa-angle-right"></i> <span>修改删除教师</span> </a> </li>
                         <li > <a href="AstudentAdd.aspx" > <i class="fa fa-angle-right"></i> <span>添加学生</span> </a> </li>
                      <li > <a href="AstudentDeletE.aspx" > <i class="fa fa-angle-right"></i> <span>修改删除学生</span> </a> </li>
                    </ul>
                  </li>
                    <li> <a href="......" > <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>系别班级管理</span> </a>
                    <ul class="nav lt">
                      <li > <a href="AddD-C.aspx" > <i class="fa fa-angle-right"></i> <span>创建班级系别</span> </a> </li>
                       <li > <a href="LookD-C.aspx" > <i class="fa fa-angle-right"></i> <span>修改删除班级系别</span> </a> </li>                    
                    </ul>
                         </li>
                  <li > <a href="....." > <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>信息管理</span> </a>
                    <ul class="nav lt">
                      <li > <a href="ATinformation.aspx" > <i class="fa fa-angle-right"></i> <span>添加教师信息</span> </a> </li>
                       <li > <a href="ADTinformation.aspx" > <i class="fa fa-angle-right"></i> <span>修改删除教师信息</span> </a> </li>
                     <li > <a href="ASinformation.aspx" > <i class="fa fa-angle-right"></i> <span>添加学生信息</span> </a> </li>
                       <li > <a href="ADSinformation.aspx" > <i class="fa fa-angle-right"></i> <span>修改删除学生信息</span> </a> </li>
                    </ul>
                  </li>
                  <li > <a href="......" > <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>成绩管理</span> </a>
                    <ul class="nav lt">
                    <li > <a href="ASgrade.aspx" > <i class="fa fa-angle-right"></i> <span>添加学生成绩</span> </a> </li>
                       <li > <a href="ADGrade.aspx" > <i class="fa fa-angle-right"></i> <span>修改删除学生成绩</span> </a> </li>
                      
                    </ul>
                  </li>
                   <li > <a href="......" > <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>课程管理</span> </a>
                    <ul class="nav lt">
                     <li > <a href="AddCourse.aspx" > <i class="fa fa-angle-right"></i> <span>添加课程</span> </a> </li>   
                        <li > <a href="AcourseDeletE.aspx" > <i class="fa fa-angle-right"></i> <span>修改删除课程</span> </a> </li>                       
                    </ul>
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
              <li><a href="admin.aspx"><i class="fa fa-home"></i> Home</a></li>
              <li class="active">主页</li>
            </ul>
            <div class="m-b-md">
              <h3 class="m-b-none" style="font-family:'Adobe Fangsong Std'">导入教师信息</h3>
              <form runat="server" class="auto-style1">



                  工号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="工号不能为空"></asp:RequiredFieldValidator>
                  <br />
                  姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="姓名不能为空"></asp:RequiredFieldValidator>
                  &nbsp;<br />
                    <asp:Label ID="Label1" runat="server" Text="性别："></asp:Label>
                  <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" RepeatLayout="Flow">
                      <asp:ListItem Selected="True">男</asp:ListItem>
                      <asp:ListItem>女</asp:ListItem>
                  </asp:RadioButtonList>



                  <br />
               
              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                               <ContentTemplate>
                      <div class="yy"> 
                         出生日期：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
          <div class="mm">
                     <asp:Calendar ID="Calendar1" runat="server" Width="374px" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="Medium" ForeColor="#003399" Height="236px">
                         <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                         <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                         <OtherMonthDayStyle ForeColor="#999999" />
                         <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                         <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                         <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                         <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                         <WeekendDayStyle BackColor="#CCCCFF" />
                     </asp:Calendar>
                         </div>


                       </div>

                              </ContentTemplate>    
                          </asp:UpdatePanel>
   
                   

                 



                  民族：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
   
                   

                 



                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="民族不能为空"></asp:RequiredFieldValidator>
   
                   

                 



                  <br />
                  身份证号：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="身份证号不能为空"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="身份证格式输入错误" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
                  <br />
                  籍贯：<uc1:area ID="area1" runat="server" />
                  <br />
                  现住址：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="现住址不能为空"></asp:RequiredFieldValidator>
                  <br />
                  政治面貌：<asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem Selected="True">未选择</asp:ListItem>
                      <asp:ListItem>群众</asp:ListItem>
                      <asp:ListItem>共青团员</asp:ListItem>
                      <asp:ListItem>党员</asp:ListItem>
                  </asp:DropDownList>
                  <br />
                  所在院系：<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="LinqDataSource1" DataTextField="DepartmentName" DataValueField="DepartmentName" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                      <asp:ListItem Selected="True">未选择</asp:ListItem>
                  </asp:DropDownList>
                  <br />
                  所教班级：<asp:DropDownList ID="DropDownList4" runat="server">
                  </asp:DropDownList>
                  <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" Select="new (DepartmentName)" TableName="Department">
                  </asp:LinqDataSource>
                  



                   
                  
                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                      <ContentTemplate>
                  <div class="yy">
                      入职年份：<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        <div class="mm">
                          <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="Medium" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="360px">
                              <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                              <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                              <OtherMonthDayStyle ForeColor="#CC9966" />
                              <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                              <SelectorStyle BackColor="#FFCC66" />
                              <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                              <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>
                             </div>


                       </div>
                      </ContentTemplate>
                  </asp:UpdatePanel>
                  
                  所教课程：<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                  <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                      <asp:ListItem Selected="True">未选择</asp:ListItem>
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [CourseName] FROM [Course]"></asp:SqlDataSource>
                  <br />
                  联系电话：<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox10" ErrorMessage="联系电话不能为空"></asp:RequiredFieldValidator>
                  <br />
                  邮箱：<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox12" ErrorMessage="邮箱格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  <br />
                  照片：<asp:Image ID="Image1" runat="server" Height="206px" Width="191px" />
                  <br />
                  <asp:FileUpload ID="FileUpload1" runat="server" />
                  
                  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button2" runat="server" Height="43px" Text="确定添加" Width="114px" Font-size="Large" ForeColor="red" OnClick="Button2_Click" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button3" runat="server" Height="43px" Text="查看添加" Width="114px" Font-size="Large" ForeColor="red" OnClick="Button3_Click" ValidationGroup="ValidationGroup1" />
                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
                   

                 



                  <br />



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
