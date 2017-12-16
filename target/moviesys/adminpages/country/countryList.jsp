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

<title>院线后台管理 | 电影国家信息</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link href="media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

<link href="media/css/style.css" rel="stylesheet" type="text/css" />

<link href="media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />

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

							电影国家 <small>国家列表</small>

						</h3>

						<ul class="breadcrumb">

							<li><i class="icon-home"></i> <a href="index.html">首页</a> <i
								class="icon-angle-right"></i></li>

							<li><a href="#">电影信息管理</a> <i class="icon-angle-right"></i>

							</li>

							<li><a href="#">电影国家</a></li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN EXAMPLE TABLE PORTLET-->

						<div class="portlet box blue">

							<div class="portlet-title">

								<div class="caption">
									<i class="icon-edit"></i>电影国家列表
								</div>

								<div class="tools">

									<a href="javascript:;" class="collapse"></a> <a
										href="#portlet-config" data-toggle="modal" class="config"></a>

									<a href="javascript:;" class="reload"></a> <a
										href="javascript:;" class="remove"></a>

								</div>

							</div>

							<div class="portlet-body">

								<div class="clearfix">

									<div class="btn-group">

										<a href='adminpages/country/addCountry.jsp' class="btn green">

											Add New <i class="icon-plus"></i>

										</a>

									</div>

									<div class="btn-group pull-right">

										<button class="btn dropdown-toggle" data-toggle="dropdown">
											Tools <i class="icon-angle-down"></i>

										</button>

										<ul class="dropdown-menu pull-right">

											<li><a href="#">Print</a></li>

											<li><a href="#">Save as PDF</a></li>

											<li><a href="#">Export to Excel</a></li>

										</ul>

									</div>

								</div>

								<table class="table table-striped table-hover table-bordered"
									id="sample_editable_1">

									<thead>

										<tr>

											<th>国家编号</th>

											<th>国家名称</th>

											<th>更新时间</th>

											<th>对应城市</th>

											<th>编辑</th>

											<th>删除</th>

										</tr>

									</thead>

									<tbody>

										<s:iterator value="%{countryList}" var="country">

											<tr class="">

												<td><s:property value="#country.countryId" /></td>

												<td><s:property value="#country.countryName" /></td>



												<td class="center"><s:property
														value="#country.lastUpdate" /></td>

												<td><a class="edit"
													href='adminpages/country/Country.action?id=<s:property value="#country.countryId" />'>城市列表</a></td>

												<td><a class="edit"
													href='adminpages/country/editCountry.action?id=<s:property value="#country.countryId" />'>编辑</a></td>

												<td><a class="delete" id="delbtn"
													onclick="if(confirm('确定删除?')==false)return false;"
													href='adminpages/country/deleteCountry.action?id=<s:property value="#country.countryId" />'>删除</a></td>

											</tr>

										</s:iterator>


									</tbody>

								</table>

							</div>

						</div>

						<!-- END EXAMPLE TABLE PORTLET-->

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

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

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

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js" type="text/javascript"></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script type="text/javascript" src="media/js/select2.min.js"></script>

	<script type="text/javascript" src="media/js/jquery.dataTables.js"></script>

	<script type="text/javascript" src="media/js/DT_bootstrap.js"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="media/js/app.js"></script>

	<script src="media/js/table-editable.js"></script>

	<script>
		jQuery(document)
				.ready(
						function() {

							App.init();
							$('#sample_editable_1')
									.dataTable(
											{
												"aLengthMenu" : [
														[ 5, 15, 20, -1 ],
														[ 5, 15, 20, "All" ] // change per page values here
												],
												// set the initial value
												"iDisplayLength" : 10,
												"sDom" : "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
												"sPaginationType" : "bootstrap",
												"oLanguage" : {
													"sLengthMenu" : "_MENU_ records per page",
													"oPaginate" : {
														"sPrevious" : "Prev",
														"sNext" : "Next"
													}
												},
												"aoColumnDefs" : [ {
													'bSortable' : false,
													'aTargets' : [ 0 ]
												} ]
											});

							jQuery(
									'#sample_editable_1_wrapper .dataTables_filter input')
									.addClass("m-wrap medium"); // modify table search input
							jQuery(
									'#sample_editable_1_wrapper .dataTables_length select')
									.addClass("m-wrap small"); // modify table per page dropdown
							jQuery(
									'#sample_editable_1_wrapper .dataTables_length select')
									.select2({
										showSearchInput : false
									//hide search box with special css class
									});

							$("#delbtn").click(function() {
								//if(checkApk()==true){  
								// $("#form1").attr("action","${basePath}/public/sjkf/shorturl/uploadApkOk.jspx");  

								if (comfirm("确定要删除吗？") == false) {
									return false;
								} else {
									return true;
								}
							});

							function checkApk() {
								var apk = '${shortUrl.apkname}';
								if (apk == null || apk == "" || apk == '') {
									return true;//第一次上传  
								}

								var file = $("#file").val();
								if (file == null || file == "" || file == '') {
									alert("请先选择文件!");
									return false;
								}

								file = file.substring(file.length, file
										.lastIndexOf('\\') + 1);

								if (apk != "" && apk != null && apk != '') {
									if (file == apk) {
										return true;
									} else {
										alert("请上传:" + apk);
										return false;
									}
								}

							}

							//TableEditable.init();

						});
	</script>

</body>

<!-- END BODY -->

</html>