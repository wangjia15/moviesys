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

<title>院线后台管理 | 电影时刻安排信息</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link href="media/css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="media/css/datepicker.css" />

<link rel="stylesheet" type="text/css" href="media/css/timepicker.css" />


<link rel="stylesheet" type="text/css"
	href="media/css/multi-select-metro.css" />
<link rel="stylesheet" type="text/css" href="media/css/clockface.css" />



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

							添加时刻安排信息<small>电影时刻安排</small>

						</h3>

						<ul class="breadcrumb">

							<li><i class="icon-home"></i> <a href="index.html">首页</a> <i
								class="icon-angle-right"></i></li>

							<li><a href="#">电影信息管理</a> <i class="icon-angle-right"></i>

							</li>

							<li><a href="#">添加时刻安排</a></li>

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
									<i class="icon-reorder"></i>电影时刻安排添加
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
								<s:form action="saveSchedule" class="form-horizontal">

									<div id="control-group alert alert-error">
										<s:fielderror />
									</div>


									<div class="control-group">

										<label class="control-label">拍片信息</label>

										<div class="controls">



											<select class="js-data-example-ajax" id="playdata"
												name="addPlayDataId">
												<option value="3620194" selected="selected">搜索上映信息</option>
											</select> <span class="help-inline"></span>

										</div>

									</div>


									<div class="control-group">

										<label class="control-label">负责员工</label>

										<div class="controls">


											<select class="js-data-example-ajax" id="staff"
												name="addStaffId">
												<option value="3620194" selected="selected">搜索员工信息</option>
											</select> <span class="help-inline"></span>

										</div>

									</div>


									<div class="control-group">

										<label class="control-label">播放厅</label>

										<div class="controls">



											<select class="js-data-example-ajax" id="hall"
												name="addHallId">
												<option value="3620194" selected="selected">搜索上映信息</option>
											</select> <span class="help-inline"></span>

										</div>

									</div>



									<div class="control-group">

										<label class="control-label">价格</label>

										<div class="controls">

											<s:textfield name="schedule.price" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>



									<div class="control-group">

										<label class="control-label">剩余座位</label>

										<div class="controls">

											<s:textfield name="schedule.steatStandby" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>








									<div class="control-group">

										<label class="control-label">播放日期</label>

										<div class="controls">

											<s:textfield name="schedule.playdate" css="span6 m-wrap "
												class="form_datetime"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>



									<div class="control-group">

										<label class="control-label">播放时间</label>




										<div class="controls">

<input type="text" id="clockface_2" value="14:30:00" class="m-wrap small" readonly="" name="schedule.playtime" >
										

											<button class="btn" type="button" id="clockface_2_toggle">

												<i class="icon-time"></i>

											</button>

										</div>



									</div>


									<div class="control-group">

										<label class="control-label">散场时间</label>

										<div class="controls">


<input type="text" id="clockface_1" value="14:30:00" class="m-wrap small" readonly="" name="schedule.endtime" >
										

									

											<button class="btn" type="button" id="clockface_1_toggle">

												<i class="icon-time"></i>

											</button>

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

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="media/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<script type="text/javascript" src="media/js/select2.min.js"></script>

	<script type="text/javascript" src="media/js/bootstrap-datepicker.js"></script>

	<script type="text/javascript"
		src="media/js/bootstrap-datetimepicker.js"></script>

	<script type="text/javascript" src="media/js/clockface.js"></script>

	<script type="text/javascript" src="media/js/date.js"></script>

	<script type="text/javascript" src="media/js/bootstrap-timepicker.js"></script>




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
		jQuery(document).ready(function() {

			App.init();
			if (!jQuery().clockface) {
				return;
			}

			if (jQuery().datepicker) {
				$('.form_datetime').datepicker({
					rtl : App.isRTL(),
					format : "yyyy-mm-dd"

				});
			}

			$('#clockface_2').clockface({
				format : 'HH:mm:00',
				trigger : 'manual'
			});
			$('#clockface_2_toggle').click(function(e) {
				e.stopPropagation();
				$('#clockface_2').clockface('toggle');
			});

			$('#clockface_1').clockface({
				format : 'HH:mm:00',
				trigger : 'manual'
			});
			$('#clockface_1_toggle').click(function(e) {
				e.stopPropagation();
				$('#clockface_1').clockface('toggle');
			});

			// 			   $('.form_datetime').datepicker({

			// 				   format: "yyyy-MM-dd",
			// 		              pickerPosition: (App.isRTL() ? "bottom-right" : "bottom-left")

			// 	            });
			//   TableEditable.init();

		});

		function formatRepo(repo) {
			if (repo.loading)
				return repo.text;
			var markup = "";

			markup = "<div class='select2-result-repository clearfix'>"
					+ "<div class='select2-result-repository__avatar'> "
					+ repo.title + "</div>" + "</div>";

			//  markup += "<div class='select2-result-repository clearfix' value='"+repo.filmId+"'>" + repo.title + "</div>";
			return markup;
		}

		function formatRepoSelection(repo) {
			console.log(repo.title);
			return repo.title || repo.title;
		}

		$("#staff").select2({
			allowClear : true,

			// placeholder: "YYYYYYYY",

			ajax : {
				url : "http://localhost:8080/ajax/searchStaff.action",
				dataType : 'json',
				delay : 1000,
				data : function(params) {
					return {
						name : params.term, // search term
					//page: params.page
					};
				},
				processResults : function(data, params) {
					// parse the results into the format expected by Select2
					// since we are using custom formatting functions we do not need to
					// alter the remote JSON data, except to indicate that infinite
					// scrolling can be used
					params.page = params.page || 1;

					return {
						results : data.result,
					// 			        pagination: {
					// 			          more: (params.page * 30) < data.total_count
					// 			        }
					};
				},
				cache : true
			},
			escapeMarkup : function(markup) {
				return markup;
			}, // let our custom formatter work
			minimumInputLength : 1,
			templateResult : formatRepo, // omitted for brevity, see the source of this page
			templateSelection : formatRepoSelection
		// omitted for brevity, see the source of this page
		});

		$("#playdata").select2({
			allowClear : true,

			// placeholder: "YYYYYYYY",

			ajax : {
				url : "http://localhost:8080/ajax/searchPlaydata.action",
				dataType : 'json',
				delay : 1000,
				data : function(params) {
					return {
						name : params.term, // search term
					//page: params.page
					};
				},
				processResults : function(data, params) {
					// parse the results into the format expected by Select2
					// since we are using custom formatting functions we do not need to
					// alter the remote JSON data, except to indicate that infinite
					// scrolling can be used
					params.page = params.page || 1;

					return {
						results : data.result,
					// 			        pagination: {
					// 			          more: (params.page * 30) < data.total_count
					// 			        }
					};
				},
				cache : true
			},
			escapeMarkup : function(markup) {
				return markup;
			}, // let our custom formatter work
			minimumInputLength : 1,
			templateResult : formatRepo, // omitted for brevity, see the source of this page
			templateSelection : formatRepoSelection
		// omitted for brevity, see the source of this page
		});

		$("#hall").select2({
			allowClear : true,

			// placeholder: "YYYYYYYY",

			ajax : {
				url : "http://localhost:8080/ajax/searchHall.action",
				dataType : 'json',
				delay : 1000,
				data : function(params) {
					return {
						name : params.term, // search term
					//page: params.page
					};
				},
				processResults : function(data, params) {
					// parse the results into the format expected by Select2
					// since we are using custom formatting functions we do not need to
					// alter the remote JSON data, except to indicate that infinite
					// scrolling can be used
					params.page = params.page || 1;

					return {
						results : data.result,
					// 			        pagination: {
					// 			          more: (params.page * 30) < data.total_count
					// 			        }
					};
				},
				cache : true
			},
			escapeMarkup : function(markup) {
				return markup;
			}, // let our custom formatter work
			minimumInputLength : 1,
			templateResult : formatRepo, // omitted for brevity, see the source of this page
			templateSelection : formatRepoSelection
		// omitted for brevity, see the source of this page
		});
	</script>

</body>

<!-- END BODY -->

</html>