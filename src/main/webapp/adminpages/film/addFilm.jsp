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

<title>院线后台管理 | 电影基本信息</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link href="media/css/select2.min.css" rel="stylesheet" />


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

							添加基本信息<small>电影基本</small>

						</h3>

						<ul class="breadcrumb">

							<li><i class="icon-home"></i> <a href="index.html">首页</a>

								<i class="icon-angle-right"></i></li>

							<li><a href="#">电影信息管理</a> <i class="icon-angle-right"></i>

							</li>

							<li><a href="#">添加基本</a></li>

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
									<i class="icon-reorder"></i>电影基本添加
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
								<s:form action="saveFilm" class="form-horizontal" >
								
								<div id="control-group alert alert-error"><s:fielderror/></div>  


									<div class="control-group">

										<label class="control-label">名称</label>

										<div class="controls">

											<s:textfield name="film.title" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
											<div class="control-group">

										<label class="control-label">播放周期</label>

										<div class="controls">

											<s:textfield name="film.playDuration" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
											<div class="control-group">

										<label class="control-label">播放率</label>

										<div class="controls">

											<s:textfield name="film.playRate" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
									
											<div class="control-group">

										<label class="control-label">播放时长</label>

										<div class="controls">

											<s:textfield name="film.length" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
									
											<div class="control-group">

										<label class="control-label">成本价</label>

										<div class="controls">

											<s:textfield name="film.replacementCost" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
									
											<div class="control-group">

										<label class="control-label">分级</label>

										<div class="controls">

											<select name="film.rating" classs="span6 m-wrap">
											   <option value="G">大众级</option>
											    <option value="PG">辅导级</option>
											     <option value="PG-13">特别辅导级</option>
											      <option value="R">限制级</option>
											       <option value="NC-17">17岁以下（包括17岁）禁止观看</option>
											       
											</select>
											
											



											<span class="help-inline"></span>

										</div>

									</div>
									
											<div class="control-group">

										<label class="control-label">上映时间</label>

										<div class="controls">

											<s:textfield name="film.releaseYear" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
									
											<div class="control-group">

										<label class="control-label">语言</label>

										<div class="controls">
										
										
										
										<s:select name="languageid" list="#request.languageList" 
										listKey="languageId" listValue="name"
										class="span6 m-wrap" >
										
										
										</s:select>

									      
										</div>

									</div>
									
									
											<div class="control-group">

										<label class="control-label">演员列表</label>

										<div class="controls">

											
			        <select class="js-data-example-ajax" onchange="getTest();" name="addActorId"  multiple="multiple">
											
											</select>

											<span class="help-inline"></span>

										</div>

									</div>
									
									
											<div class="control-group">

										<label class="control-label">类别列表</label>

										<div class="controls">

		            <s:select name="categoryid" list="categoryList" 
										listKey="categoryId" listValue="name"
										class="span6 m-wrap" >
										
										
										</s:select>

											<span class="help-inline"></span>

										</div>

									</div>
									
									
											<div class="control-group">

										<label class="control-label">简介</label>

										<div class="controls">

											<s:textfield name="film.description" css="span6 m-wrap"></s:textfield>



											<span class="help-inline"></span>

										</div>

									</div>
									
									
											<div class="control-group">

										<label class="control-label">备注</label>

										<div class="controls">

										

											<select name="film.specialFeatures" classs="span6 m-wrap">
											   <option value="Trailers">片花</option>
											    <option value="Commentaries">回忆录</option>
											     <option value="Deleted Scenes">删除的镜头</option>
											      <option value="Behind the Scenes">影片背景资料</option>
											      
											       
											</select>

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


			 function formatRepo(repo) {
			      if (repo.loading) return repo.text;
			      var markup="";


			      markup="<div class='select2-result-repository clearfix'>" +
		        "<div class='select2-result-repository__avatar'> "+ repo.title + "</div>" +
		       "</div>";

			    //  markup += "<div class='select2-result-repository clearfix' value='"+repo.filmId+"'>" + repo.title + "</div>";
			      return markup;
			    }

			    function formatRepoSelection(repo) {
			    	console.log(repo.title);
			      return repo.title || repo.title ;
			    }

			$(".js-data-example-ajax").select2({
				allowClear: true,
			
				// placeholder: "YYYYYYYY",
			
				  ajax: {
				    url: "http://localhost:8080/ajax/searchActor.action",
				    dataType: 'json',
				    delay: 1000,
				    data: function (params) {
				      return {
				        name: params.term, // search term
				        //page: params.page
				      };
				    },
				    processResults: function (data, params) {
				      // parse the results into the format expected by Select2
				      // since we are using custom formatting functions we do not need to
				      // alter the remote JSON data, except to indicate that infinite
				      // scrolling can be used
				      params.page = params.page || 1;

				      return {
				        results: data.result,
//	 			        pagination: {
//	 			          more: (params.page * 30) < data.total_count
//	 			        }
				      };
				    },
				    cache: true
				  },
				  escapeMarkup: function (markup) { return markup; }, // let our custom formatter work
				  minimumInputLength: 1,
				 templateResult: formatRepo, // omitted for brevity, see the source of this page
				 templateSelection: formatRepoSelection// omitted for brevity, see the source of this page
				});

			//   TableEditable.init();

		});
	</script>

</body>

<!-- END BODY -->

</html>