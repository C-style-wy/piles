<%--
  Created by IntelliJ IDEA.
  User: wangyang
  Date: 2017/9/15
  Time: 下午3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
%>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <%--<meta charset="uft-8"/>--%>
        <%--<title>${pd.SYSNAME}</title>--%>
        <%@include file="top.jsp"%>

        <meta name="description" content="User login page" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="static/assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="static/components/font-awesome/css/font-awesome.css"/>

        <!-- text fonts -->
        <link rel="stylesheet" href="static/assets/css/ace-fonts.css" />

        <!-- ace styles -->
        <link rel="stylesheet" href="static/assets/css/ace.css" />

        <!--[if lte IE 9]>
        <link rel="stylesheet" href="static/assets/css/ace-part2.css" />
        <![endif]-->
        <link rel="stylesheet" href="static/assets/css/ace-rtl.css" />
    </head>
    <body class="login-layout blur-login">
        <div class="main-container">
            <div class="main-content">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="login-container">
                            <div class="center">
                                <h1>
                                    <i class="ace-icon fa fa-leaf green"></i>
                                    <span class="red">Ace</span>
                                    <span class="white" id="id-text2">Application</span>
                                </h1>
                                <h4 class="light-blue" id="id-company-text">&copy; Company Name</h4>
                            </div>

                            <div class="space-6"></div>

                            <div class="position-relative">
                                <div id="login-box" class="login-box visible widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header blue lighter bigger">
                                                <i class="ace-icon fa fa-coffee green"></i>
                                                系统登陆
                                            </h4>

                                            <div class="space-6"></div>

                                            <form>
                                                <fieldset>
                                                    <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="loginname" type="text" class="form-control" placeholder="用户名" />
															<i class="ace-icon fa fa-user"></i>
														</span>
                                                    </label>

                                                    <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="password" type="password" class="form-control" placeholder="密  码" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                                    </label>

                                                    <div class="block clearfix">
                                                        <span class="input-icon input-icon-right">
															<input id="code" type="text" class="form-control" placeholder="验证码" />
														</span>
                                                    </div>

                                                    <div class="space"></div>

                                                    <div class="clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace" />
                                                            <span class="lbl"> 记住密码</span>
                                                        </label>

                                                        <button type="button" onclick="severCheck();" class="width-35 pull-right btn btn-sm btn-primary">
                                                            <i class="ace-icon fa fa-key"></i>
                                                            <span class="bigger-110">登陆</span>
                                                        </button>
                                                    </div>

                                                    <div class="space-4"></div>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="static/components/jquery/dist/jquery.js"></script>

        <script type="text/javascript">
            function severCheck() {
                if(check()) {
                    window.location.href = "main/index";
                }
            }

            function check() {
                if($("#loginname").val() == "") {
                    $("#loginname").tips({
                        side: 2,
                        msg: '用户名不得为空',
                        bg: '#AE81FF',
                        time: 3
                    });
                    $("#loginname").focus();
                    return false;
                }
            }
        </script>
        <script type="text/javascript" src="static/js/jquery.tips.js"></script>
    </body>
</html>


















