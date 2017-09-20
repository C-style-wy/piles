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
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<%@include file="top.jsp"%>

		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="static/assets/css/bootstrap.css"/>
		<link rel="stylesheet" href="static/components/font-awesome/css/font-awesome.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="static/assets/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="static/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
		<link rel="stylesheet" href="static/assets/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="static/assets/css/ace-skins.css" />
		<link rel="stylesheet" href="static/assets/css/ace-rtl.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="static/assets/css/ace-ie.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="static/assets/js/ace-extra.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="static/components/html5shiv/dist/html5shiv.min.js"></script>
		<script src="static/components/respond/dest/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->
		<%@ include file="head.jsp"%>
		<!-- /section:basics/navbar.layout -->
		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<!-- #section:basics/sidebar -->
			<%@ include file="left.jsp"%>
			<!-- /section:basics/sidebar -->

			<div class="main-content">
				<div class="main-content-inner">
					<!-- #section:basics/content.breadcrumbs -->
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">Other Pages</a>
							</li>
							<li class="active">Blank Page</li>
						</ul><!-- /.breadcrumb -->
						<!-- /section:basics/content.searchbox -->
					</div>

					<!-- /section:basics/content.breadcrumbs -->
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<%@ include file="footer.jsp"%>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="static/components/jquery/dist/jquery.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="static/components/jquery.1x/dist/jquery.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='static/components/_mod/jquery.mobile.custom/jquery.mobile.custom.js'>"+"<"+"/script>");
		</script>
		<script src="static/components/bootstrap/dist/js/bootstrap.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->
		<script src="static/assets/js/src/elements.scroller.js"></script>
		<script src="static/assets/js/src/elements.colorpicker.js"></script>
		<script src="static/assets/js/src/elements.fileinput.js"></script>
		<script src="static/assets/js/src/elements.typeahead.js"></script>
		<script src="static/assets/js/src/elements.wysiwyg.js"></script>
		<script src="static/assets/js/src/elements.spinner.js"></script>
		<script src="static/assets/js/src/elements.treeview.js"></script>
		<script src="static/assets/js/src/elements.wizard.js"></script>
		<script src="static/assets/js/src/elements.aside.js"></script>
		<script src="static/assets/js/src/ace.js"></script>
		<script src="static/assets/js/src/ace.basics.js"></script>
		<script src="static/assets/js/src/ace.scrolltop.js"></script>
		<script src="static/assets/js/src/ace.ajax-content.js"></script>
		<script src="static/assets/js/src/ace.touch-drag.js"></script>
		<script src="static/assets/js/src/ace.sidebar.js"></script>
		<script src="static/assets/js/src/ace.sidebar-scroll-1.js"></script>
		<script src="static/assets/js/src/ace.submenu-hover.js"></script>
		<script src="static/assets/js/src/ace.widget-box.js"></script>
		<script src="static/assets/js/src/ace.settings.js"></script>
		<script src="static/assets/js/src/ace.settings-rtl.js"></script>
		<script src="static/assets/js/src/ace.settings-skin.js"></script>
		<script src="static/assets/js/src/ace.widget-on-reload.js"></script>
		<script src="static/assets/js/src/ace.searchbox-autocomplete.js"></script>

		<!-- inline scripts related to this page -->

		<!-- the following scripts are used in demo only for onpage help and you don't need them -->
		<link rel="stylesheet" href="static/assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="static/docs/assets/js/themes/sunburst.css" />

		<script type="text/javascript"> ace.vars['base'] = '..'; </script>
		<script src="static/assets/js/src/elements.onpage-help.js"></script>
		<script src="static/assets/js/src/ace.onpage-help.js"></script>
		<script src="static/docs/assets/js/rainbow.js"></script>
		<script src="static/docs/assets/js/language/generic.js"></script>
		<script src="static/docs/assets/js/language/html.js"></script>
		<script src="static/docs/assets/js/language/css.js"></script>
		<script src="static/docs/assets/js/language/javascript.js"></script>
	</body>
</html>
