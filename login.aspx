<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login_login" %>
<!doctype html>

<html lang="en">
<head>
	<meta charset="UTF-8" />
	<!--渲染引擎-->
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--360浏览开启极速模式-->
	<meta name=”renderer” content=”webkit” /> 
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<title>系统登录</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/iconfont.css" />
	<link rel="stylesheet" href="css/login.css" />
    <!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<form id="form1" runat="server">
						<input type="hidden" name="flag" value="" />
						<input type="hidden" name="flag" value="" />
	<div id="top-bar">
		<div class="wrap clearfix">
			<h1 id="logo" class="pull-left"><a href="login.aspx" title="">XXX</a></h1>
			<!--<div class="pull-right login-edit">
				<i class="iconfont">&#xe60d;</i> <a href="">"登录页面"改进建议</a>
			</div>-->
		</div>
	</div>
	<div id="login">
		<div class="wrap clearfix">
			<div class="login-img pull-left"></div>
			<div class="login-form pull-right">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <center><asp:Label ID="Label1" runat="server" ForeColor="#006600" Text="用户登录"  Font-Size="X-Large"></asp:Label></center>
&nbsp;<div class="forget clearfix">
					<!--<a class="pull-left" href="###" title="注册新用户" data-toggle="tooltip" data-placement="top">注册新用户</a>-->
					
                    <div class="input-group">
                        <span class="input-group-addon iconfont">&#xe6ff;</span>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="学号或工号" ></asp:TextBox>
                    </div>
                    <br />
                    <div class="input-group">
                        <span class="input-group-addon iconfont">&#xe61c;</span>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="密码" TextMode="Password" ></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="3">
                        <asp:ListItem Selected="True">学生</asp:ListItem>
                        <asp:ListItem>教师</asp:ListItem>
                        <asp:ListItem>管理员</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/360截图20161202180747095.jpg" OnClick="ImageButton1_Click" />
                    <br />
                    <br />
                </div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="wrap text-center">
			<div class="link">
                		
				<a href="###" title="联系客服" target="_blank">联系客服</a>
			
				<a href="###" title="联系我们" target="_blank">联系我们</a>
				<a href="###" title="网站地图" target="_blank">网站地图</a>
				<a href="###" title="法律声明" target="_blank">法律声明</a>
			</div>
			<div>Copyright &copy; 2016 <a href="###" title="">pzl</a> 版权所有</div>
		</div>
	</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        (function () {
            $("[data-toggle='tooltip']").tooltip();
            //点击刷新验证码
            var src = $(".verify").attr('src');
            $(".verify").click(function () {
                $(this).attr('src', src + '?random=' + Math.random());
            });
            //勾选
            $(".auto").change(function () {
                if ($(this).prop('checked')) {
                    $(this).parent().parent().siblings('.auto-danger').stop(true).slideDown(300);
                } else {
                    $(this).parent().parent().siblings('.auto-danger').stop(true).slideUp(300);
                }
            });
            //tab
            var hd = $('.hd h2');
            var bd = $('.bd');
            hd.each(function (i) {
                $(this).hover(function () {
                    $(this).addClass('on').siblings().removeClass('on');
                    bd.eq(i).show().siblings('.bd').hide();
                });
            });
            hd.eq(0).trigger('mouseover');
        })();
    </script>
    </form>
</body>
</html>