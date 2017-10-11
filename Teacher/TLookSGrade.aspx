<%@ Page Language="C#" Debug=true AutoEventWireup="true" CodeFile="TLookSGrade.aspx.cs" Inherits="Teacher_TASGrade" %>

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
        .auto-style17 {
            font-size: x-large;
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
              <!--     <ul class="nav lt">
                      
                        <li > <a href="....." > <i class="fa fa-angle-right"></i> <span>这是一个范例</span> </a> </li> 
                      
                    </ul>-->
                  </li>
                   <li > <a href="TLookSGrade.aspx" > <i class="fa fa-file-text icon"> <b class="bg-primary"></b> </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i class="fa fa-angle-up text-active"></i> </span> <span>学生成绩管理</span> </a>
               <!--  <ul class="nav lt">
                           
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
              <h3 class="m-b-none">管理所教学生成绩</h3>
             <form runat="server">



                 <span class="auto-style17">查询条件</span><asp:DropDownList ID="DropDownList4" runat="server">
                     <asp:ListItem>学号</asp:ListItem>
                     <asp:ListItem>姓名</asp:ListItem>
                 </asp:DropDownList>
                 <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="查询" />



             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" DataKeyNames="id" DataSourceID="SqlDataSource2" AllowPaging="True" Width="514px">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                         <asp:BoundField DataField="stuNum" HeaderText="学号" SortExpression="stuNum" />
                         <asp:BoundField DataField="stuName" HeaderText="姓名" SortExpression="stuName" />
                         <asp:HyperLinkField DataNavigateUrlFields="stuNum" DataNavigateUrlFormatString="TLookSGrade.aspx?stuNum={0}" ControlStyle-ForeColor="#009933" NavigateUrl="~/Teacher/TLookSGrade.aspx" Text="录入成绩" >
<ControlStyle ForeColor="#009933"></ControlStyle>
                         </asp:HyperLinkField>
                         <asp:HyperLinkField DataNavigateUrlFields="stuNum" DataNavigateUrlFormatString="TLookSGrade.aspx?stuNum={0}" ControlStyle-ForeColor="#006600"  NavigateUrl="~/Teacher/TLookSGrade.aspx" Text="查看·修改成绩" >
<ControlStyle ForeColor="#006600"></ControlStyle>
                         </asp:HyperLinkField>
                     </Columns>
                     <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                 </asp:GridView>



                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [id], [stuNum], [stuName] FROM [Stu_information]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Stu_information] WHERE [id] = @original_id AND (([stuNum] = @original_stuNum) OR ([stuNum] IS NULL AND @original_stuNum IS NULL)) AND (([stuName] = @original_stuName) OR ([stuName] IS NULL AND @original_stuName IS NULL))" InsertCommand="INSERT INTO [Stu_information] ([stuNum], [stuName]) VALUES (@stuNum, @stuName)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Stu_information] SET [stuNum] = @stuNum, [stuName] = @stuName WHERE [id] = @original_id AND (([stuNum] = @original_stuNum) OR ([stuNum] IS NULL AND @original_stuNum IS NULL)) AND (([stuName] = @original_stuName) OR ([stuName] IS NULL AND @original_stuName IS NULL))">
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
                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                         <asp:BoundField DataField="userNum" HeaderText="学号" SortExpression="userNum" />
                         <asp:BoundField DataField="_Name" HeaderText="姓名" SortExpression="_Name" />
                         <asp:BoundField DataField="_class" HeaderText="班级" SortExpression="_class" />
                         <asp:BoundField DataField="term" HeaderText="学期" SortExpression="term" />
                         <asp:BoundField DataField="courseName" HeaderText="课程名" SortExpression="courseName" />
                         <asp:BoundField DataField="RegularGrade" HeaderText="平时成绩" SortExpression="RegularGrade" />
                         <asp:BoundField DataField="MidtermGrade" HeaderText="期中成绩" SortExpression="MidtermGrade" />
                         <asp:BoundField DataField="FinalGrade" HeaderText="期末成绩" SortExpression="FinalGrade" />
                         <asp:BoundField DataField="WhetherQualified" HeaderText="是否合格" SortExpression="WhetherQualified" />
                         <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="TLookSGrade.aspx?id={0}" ControlStyle-ForeColor="#006600" NavigateUrl="~/Teacher/TLookSGrade.aspx" Text="修改" >
<ControlStyle ForeColor="#006600"></ControlStyle>
                         </asp:HyperLinkField>
                     </Columns>
                     <EditRowStyle BackColor="#7C6F57" />
                     <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#E3EAEB" />
                     <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" DeleteCommand="DELETE FROM [SGrade] WHERE [id] = @original_id AND (([userNum] = @original_userNum) OR ([userNum] IS NULL AND @original_userNum IS NULL)) AND (([_Name] = @original_column1) OR ([_Name] IS NULL AND @original_column1 IS NULL)) AND (([_class] = @original_column2) OR ([_class] IS NULL AND @original_column2 IS NULL)) AND (([term] = @original_term) OR ([term] IS NULL AND @original_term IS NULL)) AND (([courseName] = @original_courseName) OR ([courseName] IS NULL AND @original_courseName IS NULL)) AND (([RegularGrade] = @original_RegularGrade) OR ([RegularGrade] IS NULL AND @original_RegularGrade IS NULL)) AND (([MidtermGrade] = @original_MidtermGrade) OR ([MidtermGrade] IS NULL AND @original_MidtermGrade IS NULL)) AND (([FinalGrade] = @original_FinalGrade) OR ([FinalGrade] IS NULL AND @original_FinalGrade IS NULL)) AND (([WhetherQualified] = @original_WhetherQualified) OR ([WhetherQualified] IS NULL AND @original_WhetherQualified IS NULL))" InsertCommand="INSERT INTO [SGrade] ([userNum], [_Name], [_class], [term], [courseName], [RegularGrade], [MidtermGrade], [FinalGrade], [WhetherQualified]) VALUES (@userNum, @column1, @column2, @term, @courseName, @RegularGrade, @MidtermGrade, @FinalGrade, @WhetherQualified)" OldValuesParameterFormatString="original_{0}"
                      SelectCommand="SELECT * FROM [SGrade] WHERE ([userNum] = @userNum)" UpdateCommand="UPDATE [SGrade] SET [userNum] = @userNum, [_Name] = @column1, [_class] = @column2, [term] = @term, [courseName] = @courseName, [RegularGrade] = @RegularGrade, [MidtermGrade] = @MidtermGrade, [FinalGrade] = @FinalGrade, [WhetherQualified] = @WhetherQualified WHERE [id] = @original_id AND (([userNum] = @original_userNum) OR ([userNum] IS NULL AND @original_userNum IS NULL)) AND (([_Name] = @original_column1) OR ([_Name] IS NULL AND @original_column1 IS NULL)) AND (([_class] = @original_column2) OR ([_class] IS NULL AND @original_column2 IS NULL)) AND (([term] = @original_term) OR ([term] IS NULL AND @original_term IS NULL)) AND (([courseName] = @original_courseName) OR ([courseName] IS NULL AND @original_courseName IS NULL)) AND (([RegularGrade] = @original_RegularGrade) OR ([RegularGrade] IS NULL AND @original_RegularGrade IS NULL)) AND (([MidtermGrade] = @original_MidtermGrade) OR ([MidtermGrade] IS NULL AND @original_MidtermGrade IS NULL)) AND (([FinalGrade] = @original_FinalGrade) OR ([FinalGrade] IS NULL AND @original_FinalGrade IS NULL)) AND (([WhetherQualified] = @original_WhetherQualified) OR ([WhetherQualified] IS NULL AND @original_WhetherQualified IS NULL))">
                     <DeleteParameters>
                         <asp:Parameter Name="original_id" Type="Int32" />
                         <asp:Parameter Name="original_userNum" Type="String" />
                         <asp:Parameter Name="original_column1" Type="String" />
                         <asp:Parameter Name="original_column2" Type="String" />
                         <asp:Parameter Name="original_term" Type="String" />
                         <asp:Parameter Name="original_courseName" Type="String" />
                         <asp:Parameter Name="original_RegularGrade" Type="String" />
                         <asp:Parameter Name="original_MidtermGrade" Type="String" />
                         <asp:Parameter Name="original_FinalGrade" Type="String" />
                         <asp:Parameter Name="original_WhetherQualified" Type="String" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="userNum" Type="String" />
                         <asp:Parameter Name="column1" Type="String" />
                         <asp:Parameter Name="column2" Type="String" />
                         <asp:Parameter Name="term" Type="String" />
                         <asp:Parameter Name="courseName" Type="String" />
                         <asp:Parameter Name="RegularGrade" Type="String" />
                         <asp:Parameter Name="MidtermGrade" Type="String" />
                         <asp:Parameter Name="FinalGrade" Type="String" />
                         <asp:Parameter Name="WhetherQualified" Type="String" />
                     </InsertParameters>
                     <SelectParameters>
                         <asp:QueryStringParameter Name="userNum" QueryStringField="stuNum" Type="String" />
                     </SelectParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="userNum" Type="String" />
                         <asp:Parameter Name="column1" Type="String" />
                         <asp:Parameter Name="column2" Type="String" />
                         <asp:Parameter Name="term" Type="String" />
                         <asp:Parameter Name="courseName" Type="String" />
                         <asp:Parameter Name="RegularGrade" Type="String" />
                         <asp:Parameter Name="MidtermGrade" Type="String" />
                         <asp:Parameter Name="FinalGrade" Type="String" />
                         <asp:Parameter Name="WhetherQualified" Type="String" />
                         <asp:Parameter Name="original_id" Type="Int32" />
                         <asp:Parameter Name="original_userNum" Type="String" />
                         <asp:Parameter Name="original_column1" Type="String" />
                         <asp:Parameter Name="original_column2" Type="String" />
                         <asp:Parameter Name="original_term" Type="String" />
                         <asp:Parameter Name="original_courseName" Type="String" />
                         <asp:Parameter Name="original_RegularGrade" Type="String" />
                         <asp:Parameter Name="original_MidtermGrade" Type="String" />
                         <asp:Parameter Name="original_FinalGrade" Type="String" />
                         <asp:Parameter Name="original_WhetherQualified" Type="String" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                 <br />
                 <br />
                 <center>
                 <span class="auto-style1">学号：<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="red" style="font-weight: 700"></asp:Label>
                     <br />
                 姓名：<asp:Label ID="Label2" runat="server" Text="Label" ForeColor="red" style="font-weight: 700"></asp:Label>
                     <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 学期：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 课程名称：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                     <br />
                     班级：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                     <br />
                 平时成绩：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     <br />
                 &nbsp;期中成绩：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                     <br />
                 &nbsp;
                 期末成绩：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                     <br />
                 是否合格：</span><asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="128px">
                     <asp:ListItem>未计算</asp:ListItem>
                     <asp:ListItem>合格</asp:ListItem>
                     <asp:ListItem>不合格</asp:ListItem>
                 </asp:DropDownList>
                     <br />
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加成绩" />
               </center>


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
