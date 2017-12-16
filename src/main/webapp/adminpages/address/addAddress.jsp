<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- BEGIN HEAD -->

<head lang="zh-cn">
<base href="<%=basePath%>" />

<meta charset="utf-8" />

<title>院线后台管理 | 电影地址信息</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link href="media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />

<link href="media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/style-metro.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/style.css" rel="stylesheet" type="text/css" />

<link href="media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/default.css" rel="stylesheet"
	type="text/css" id="style_color" />

<link href="media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />

<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN PAGE LEVEL STYLES -->

<link rel="stylesheet" type="text/css"
	href="media/css/select2_metro.css" />

<link rel="stylesheet" href="media/css/DT_bootstrap.css" />

<!-- END PAGE LEVEL STYLES -->

<link rel="shortcut icon" href="media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

	<%@include file="/adminpages/masterpage/navbar.jsp"%>


	<!-- BEGIN CONTAINER -->

	<div class="page-container row-fluid">

		<!-- BEGIN SIDEBAR -->


		<%@include file="/adminpages/masterpage/page-sidebar.jsp"%>

		<!-- END SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div id="portlet-config" class="modal hide">

				<div class="modal-header">

					<button data-dismiss="modal" class="close" type="button"></button>

					<h3>portlet Settings</h3>

				</div>

				<div class="modal-body">

					<p>Here will be a configuration form</p>

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->

			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN STYLE CUSTOMIZER -->

						<div class="color-panel hidden-phone">

							<div class="color-mode-icons icon-color"></div>

							<div class="color-mode-icons icon-color-close"></div>

							<div class="color-mode">

								<p>THEME COLOR</p>

								<ul class="inline">

									<li class="color-black current color-default"
										data-style="default"></li>

									<li class="color-blue" data-style="blue"></li>

									<li class="color-brown" data-style="brown"></li>

									<li class="color-purple" data-style="purple"></li>

									<li class="color-grey" data-style="grey"></li>

									<li class="color-white color-light" data-style="light"></li>

								</ul>

								<label> <span>Layout</span> <select
									class="layout-option m-wrap small">

										<option value="fluid" selected>Fluid</option>

										<option value="boxed">Boxed</option>

								</select>

								</label> <label> <span>Header</span> <select
									class="header-option m-wrap small">

										<option value="fixed" selected>Fixed</option>

										<option value="default">Default</option>

								</select>

								</label> <label> <span>Sidebar</span> <select
									class="sidebar-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

								</select>

								</label> <label> <span>Footer</span> <select
									class="footer-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

								</select>

								</label>

							</div>

						</div>

						<!-- END BEGIN STYLE CUSTOMIZER -->

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">

							添加地址信息<small>电影地址</small>

						</h3>

						<ul class="breadcrumb">

							<li><i class="icon-home"></i> <a href="index.html">首页</a>

								<i class="icon-angle-right"></i></li>

							<li><a href="#">电影信息管理</a> <i class="icon-angle-right"></i>

							</li>

							<li><a href="#">添加地址</a></li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN SAMPLE FORM PORTLET-->

						<div class="portlet box blue">

							<div class="portlet-title">

								<div class="caption">
									<i class="icon-reorder"></i>电影地址添加
								</div>

								<div class="tools">

									<a href="javascript:;" class="collapse"></a> <a
										href="#portlet-config" data-toggle="modal" class="config"></a>

									<a href="javascript:;" class="reload"></a> <a
										href="javascript:;" class="remove"></a>

								</div>

							</div>

							<div class="portlet-body form">

								<!-- BEGIN FORM-->
								<s:form action="saveAddress" class="form-horizontal" >
								
								<div id="control-group alert alert-error"><s:fielderror/></div>  


									<div class="control-group">

										<label class="control-label">主地址</label>

										<div class="controls">

											<s:textfield name="address.address1" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
										<div class="control-group">

										<label class="control-label">次地址</label>

										<div class="controls">

											<s:textfield name="address.address2" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
										<div class="control-group">

										<label class="control-label">街区</label>

										<div class="controls">

											<s:textfield name="address.district" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
										<div class="control-group">

										<label class="control-label">电话</label>

										<div class="controls">

											<s:textfield name="address.phone" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
										<div class="control-group">

										<label class="control-label">邮政编码</label>

										<div class="controls">

											<s:textfield name="address.postalCode" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
										<div class="control-group">

										<label class="control-label">城市</label>

										<div class="controls">

										<s:select name="cityid" list="#request.CityList" 
										listKey="cityId" listValue="cityName"
										class="span6 m-wrap" ></s:select>
										


											<span class="help-inline"></span>

										</div>

									</div>


									<div class="form-actions">
										<s:submit value="增 加" class="btn blue"></s:submit>

										<s:reset class="btn" value="重置"></s:reset>



									</div>

								</s:form>

								<!-- END FORM-->

							</div>

						</div>

						<!-- END SAMPLE FORM PORTLET-->

					</div>

				</div>
				<!-- END PAGE CONTENT -->

			</div>

			<!-- END PAGE CONTAINER-->

		</div>

		<!-- END PAGE -->

	</div>

	<!-- END CONTAINER -->

	<%@include file="/adminpages/masterpage/footer.jsp"%>

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="media/js/jquery-1.10.1.min.js"
		type="text/javascript"></script>

	<script src="media/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->

	<script src="media/js/jquery.slimscroll.min.js"
		type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js"
		type="text/javascript"></script>

	<script src="media/js/jquery.cookie.min.js"
		type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js"
		type="text/javascript"></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script type="text/javascript" src="media/js/select2.min.js"></script>

	<script type="text/javascript"
		src="media/js/jquery.dataTables.js"></script>

	<script type="text/javascript" src="media/js/DT_bootstrap.js"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="media/js/app.js"></script>

	<script src="media/js/table-editable.js"></script>

	<script>
		jQuery(document).ready(function() {

			App.init();

			//   TableEditable.init();

		});
	</script>

</body>

<!-- END BODY -->

</html>