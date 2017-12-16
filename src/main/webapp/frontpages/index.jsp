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

<head>

<meta charset="utf-8" />
<base href="<%=basePath%>" />

<title>Metronic | Layouts - Promo Page</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="frontpages/mycss.css" rel="stylesheet" type="text/css"/>

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

<link href="media/css/promo.css" rel="stylesheet" type="text/css" />

<link href="media/css/animate.css" rel="stylesheet" type="text/css" />

<link rel="shortcut icon" href="media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed page-full-width">
	<%@include file="/frontpages/navbar.jsp"%>




	<!-- BEGIN CONTAINER -->

	<div class="page-container row-fluid">

		<!-- BEGIN EMPTY PAGE SIDEBAR -->

		<div
			class="page-sidebar nav-collapse collapse visible-phone visible-tablet">

			<ul class="page-sidebar-menu">

				<li class="visible-phone visible-tablet">
					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

					<form class="sidebar-search">

						<div class="input-box">

							<a href="javascript:;" class="remove"></a> <input type="text"
								placeholder="Search..." /> <input type="button" class="submit"
								value=" " />

						</div>

					</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->

				</li>

				<li><a class="active" href="index.html"> Dashboard </a></li>

				<li class="active"><a href="javascript:;"> Layouts <span
						class="arrow open"></span> <span class="selected"></span>

				</a>

					<ul class="sub-menu">

						<li><a href="layout_horizontal_sidebar_menu.html">

								Horzontal & Sidebar Menu </a></li>

						<li><a href="layout_horizontal_menu1.html"> Horzontal
								Menu 1 </a></li>

						<li><a href="layout_horizontal_menu2.html"> Horzontal
								Menu 2 </a></li>

						<li><a href="layout_promo.html"> Promo Page </a></li>

						<li><a href="layout_email.html"> Email Templates </a></li>

						<li><a href="layout_ajax.html"> Content Loading via Ajax</a>

						</li>

						<li><a href="layout_sidebar_closed.html"> Sidebar Closed
								Page </a></li>

						<li><a href="layout_blank_page.html"> Blank Page </a></li>

						<li><a href="layout_boxed_page.html">Boxed Page</a></li>

						<li><a href="layout_boxed_not_responsive.html">

								Non-Responsive Boxed Layout </a></li>

						<li><a href="layout_blank_page.html"> Blank Page </a></li>

						<li><a href="javascript:;"> More options <span
								class="arrow"></span>

						</a>

							<ul class="sub-menu">

								<li><a href="#">Second level link</a></li>

								<li><a href="javascript:;">More options<span
										class="arrow"></span></a>

									<ul class="sub-menu">

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

									</ul></li>

								<li><a href="index.html">Second level link</a></li>

								<li><a href="index.html">Second level link</a></li>

								<li><a href="index.html">Second level link</a></li>

							</ul></li>

					</ul></li>

				<li><a href="">Tables</a></li>

				<li><a href="">Extra <span class="arrow"></span>

				</a>

					<ul class="sub-menu">

						<li><a href="index.html">About Us</a></li>

						<li><a href="index.html">Services</a></li>

						<li><a href="index.html">Pricing</a></li>

						<li><a href="index.html">FAQs</a></li>

						<li><a href="index.html">Gallery</a></li>

						<li><a href="index.html">Registration</a></li>

						<li><a href="index.html">2 Columns (Left)</a></li>

						<li><a href="index.html">2 Columns (Right)</a></li>

					</ul></li>

			</ul>

		</div>

		<!-- END EMPTY PAGE SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content no-min-height">

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

			<div class="container-fluid promo-page">

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">

					<div class="span12">

						<div class="block-grey">

							<div class="container">

								<div class="widget-home-index-list">





									<h3 class="subtitle sub-title">
										正在热映
									</h3>
									<div class="flexslider movielist" id="flexslider1">
										<div class="loading hide"></div>

										<div class="flex-viewport"
											style="overflow: hidden; position: relative;">
											<ul class="slides"
												style="width: 100%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
												
											
	<s:iterator value="%{playdataList}" var="playdata">
												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="frontpages/moviedetail.action"
														data-data="{&quot;movieId&quot;:62920}">

														<img
															src='frontpages/<s:property value="#playdata.filmpicture"/>'
															draggable="false"/>
													</div>
													<p class="text font14"><s:property value="#playdata.filmname"/></p>


													<p>
														<span class="fr record nuomi-orange">8.4</span> <a
															class="buy" href='/frontpages/moviedetail.action?id=<s:property value="#playdata.playdataId"/>'
															data-data="{&quot;movieId&quot;:62920}">详细信息</a>
													</p>


												</li>
												
												</s:iterator>

												

										

												

											</ul>
										</div>
							
									</div>

								</div>
							</div>

						</div>

						<div class="block-yellow">

							<div class="container">

								<div class="widget-home-index-list">














									<h3 class="subtitle sub-title">
										正在热映
									</h3>
									<div class="flexslider movielist" id="flexslider1">
										<div class="loading hide"></div>

										<div class="flex-viewport"
											style="overflow: hidden; position: relative;">
											<ul class="slides"
												style="width: 100%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:62920}">

														<img
															src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/0b55b319ebc4b7458f11a5e2c5fc1e178b8215b8.jpg"
															draggable="false">
													</div>
													<p class="text font14">三生三世十里桃花</p>


													<p>
														<span class="fr record nuomi-orange">8.4</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:62920}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:62880}">

														<img
															src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/738b4710b912c8fc6c34d366f6039245d7882151.jpg"
															draggable="false">
													</div>
													<p class="text font14">战狼2</p>


													<p>
														<span class="fr record nuomi-orange">9.6</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:62880}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:62975}">

														<img
															src="https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/b90e7bec54e736d15a35bb3591504fc2d56269ec.jpg"
															draggable="false">
													</div>
													<p class="text font14">建军大业</p>


													<p>
														<span class="fr record nuomi-orange">8.8</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:62975}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:94867}">

														<img
															src="https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/58ee3d6d55fbb2fb06118a87454a20a44623dc69.jpg"
															draggable="false">
													</div>
													<p class="text font14">心理罪</p>


													<p>
														<span class="fr record nuomi-orange">8.3</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:94867}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:9990}">

														<img
															src="https://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/b3119313b07eca80be088e149b2397dda1448330.jpg"
															draggable="false">
													</div>
													<p class="text font14">鲛珠传</p>


													<p>
														<span class="fr record nuomi-orange">8.2</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:9990}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:95022}">

														<img
															src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/eac4b74543a98226c8ccf0bd8082b9014a90eb1f.jpg"
															draggable="false">
													</div>
													<p class="text font14">侠盗联盟</p>


													<p>
														<span class="fr record nuomi-orange">7.8</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:95022}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:95025}">

														<img
															src="https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/32fa828ba61ea8d35fe447f39d0a304e241f5806.jpg"
															draggable="false">
													</div>
													<p class="text font14">我是马布里</p>


													<p>
														<span class="fr record nuomi-orange">8.1</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:95025}">选座购票</a>
													</p>


												</li>

										

												

											</ul>
										</div>
							
									</div>

								</div>
							</div>

						</div>

						<div class="block-transparent">

							<div class="container">
		<div class="widget-home-index-list">














									<h3 class="subtitle sub-title">
										正在热映
									</h3>
									<div class="flexslider movielist" id="flexslider1">
										<div class="loading hide"></div>

										<div class="flex-viewport"
											style="overflow: hidden; position: relative;">
											<ul class="slides"
												style="width: 100%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:62920}">

														<img
															src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/0b55b319ebc4b7458f11a5e2c5fc1e178b8215b8.jpg"
															draggable="false">
													</div>
													<p class="text font14">三生三世十里桃花</p>


													<p>
														<span class="fr record nuomi-orange">8.4</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:62920}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:62880}">

														<img
															src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/738b4710b912c8fc6c34d366f6039245d7882151.jpg"
															draggable="false">
													</div>
													<p class="text font14">战狼2</p>


													<p>
														<span class="fr record nuomi-orange">9.6</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:62880}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:62975}">

														<img
															src="https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/b90e7bec54e736d15a35bb3591504fc2d56269ec.jpg"
															draggable="false">
													</div>
													<p class="text font14">建军大业</p>


													<p>
														<span class="fr record nuomi-orange">8.8</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:62975}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:94867}">

														<img
															src="https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/58ee3d6d55fbb2fb06118a87454a20a44623dc69.jpg"
															draggable="false">
													</div>
													<p class="text font14">心理罪</p>


													<p>
														<span class="fr record nuomi-orange">8.3</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:94867}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:9990}">

														<img
															src="https://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/b3119313b07eca80be088e149b2397dda1448330.jpg"
															draggable="false">
													</div>
													<p class="text font14">鲛珠传</p>


													<p>
														<span class="fr record nuomi-orange">8.2</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:9990}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:95022}">

														<img
															src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/eac4b74543a98226c8ccf0bd8082b9014a90eb1f.jpg"
															draggable="false">
													</div>
													<p class="text font14">侠盗联盟</p>


													<p>
														<span class="fr record nuomi-orange">7.8</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:95022}">选座购票</a>
													</p>


												</li>

												<li class="item"
													style="width: 140px; margin-right: 0px; float: left; display: block;">
													<div class="img" data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:95025}">

														<img
															src="https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/32fa828ba61ea8d35fe447f39d0a304e241f5806.jpg"
															draggable="false">
													</div>
													<p class="text font14">我是马布里</p>


													<p>
														<span class="fr record nuomi-orange">8.1</span> <a
															class="buy" href="javascript:;" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:95025}">选座购票</a>
													</p>


												</li>

										

												

											</ul>
										</div>
							
									</div>

								</div>
							</div>

						</div>

						<div class="block-footer">

							<div class="container">

								<div class="row-fluid">

									<div class="span4">

										<h3>Subscribe</h3>

										<p>Donec id elit non mi porta gravida at eget metus. Fusce
											dapibus, justo sit amet risus etiam.</p>

										<form class="form-search" action="#">

											<div class="input-append">

												<input type="text" class="m-wrap"
													placeholder="Email Address">
												<button type="button" class="btn blue">GO!</button>

											</div>

										</form>

									</div>

									<div class="span4">

										<h3>Photo Stream</h3>

										<ul class="unstyled blog-images">

											<li><a href="#"><img src="media/image/1.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/2.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/3.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/4.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/5.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/6.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/8.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/10.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/11.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/1.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/2.jpg" alt=""></a></li>

											<li><a href="#"><img src="media/image/7.jpg" alt=""></a></li>

										</ul>

									</div>

									<div class="span4">

										<h3>Stay Tuned</h3>

										<ul class="social-icons">

											<li><a href="#" data-original-title="amazon"
												class="amazon"></a></li>

											<li><a href="#" data-original-title="behance"
												class="behance"></a></li>

											<li><a href="#" data-original-title="blogger"
												class="blogger"></a></li>

											<li><a href="#" data-original-title="deviantart"
												class="deviantart"></a></li>

											<li><a href="#" data-original-title="dribbble"
												class="dribbble"></a></li>

											<li><a href="#" data-original-title="dropbox"
												class="dropbox"></a></li>

											<li><a href="#" data-original-title="facebook"
												class="facebook"></a></li>

											<li><a href="#" data-original-title="forrst"
												class="forrst"></a></li>

											<li><a href="#" data-original-title="github"
												class="github"></a></li>

											<li><a href="#" data-original-title="Goole Plus"
												class="googleplus"></a></li>

											<li><a href="#" data-original-title="jolicloud"
												class="jolicloud"></a></li>

											<li><a href="#" data-original-title="last-fm"
												class="last-fm"></a></li>

											<li><a href="#" data-original-title="linkedin"
												class="linkedin"></a></li>

											<li><a href="#" data-original-title="picasa"
												class="picasa"></a></li>

											<li><a href="#" data-original-title="pintrest"
												class="pintrest"></a></li>

											<li><a href="#" data-original-title="rss" class="rss"></a></li>

											<li><a href="#" data-original-title="skype"
												class="skype"></a></li>

											<li><a href="#" data-original-title="spotify"
												class="spotify"></a></li>

											<li><a href="#" data-original-title="stumbleupon"
												class="stumbleupon"></a></li>

											<li><a href="#" data-original-title="tumblr"
												class="tumblr"></a></li>

											<li><a href="#" data-original-title="twitter"
												class="twitter"></a></li>

											<li><a href="#" data-original-title="vimeo"
												class="vimeo"></a></li>

											<li><a href="#" data-original-title="wordpress"
												class="wordpress"></a></li>

											<li><a href="#" data-original-title="xing" class="xing"></a></li>

											<li><a href="#" data-original-title="yahoo"
												class="yahoo"></a></li>

											<li><a href="#" data-original-title="youtube"
												class="youtube"></a></li>

											<li><a href="#" data-original-title="vk" class="vk"></a></li>

											<li><a href="#" data-original-title="instagram"
												class="instagram"></a></li>

										</ul>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<!-- END PAGE CONTENT-->

		</div>

		<!-- END PAGE CONTAINER-->

	</div>

	<!-- END PAGE -->

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER1 -->

	<div class="footer">

		<div class="container">

			<div class="footer-inner">

				2013 &copy; Metronic by keenthemes.Collect from <a
					href="http://www.cssmoban.com/" title="网站模板" target="_blank">网站模板</a>
				- More Templates <a href="http://www.cssmoban.com/" target="_blank"
					title="模板之家">模板之家</a>

			</div>

			<div class="footer-tools">

				<span class="go-top"> <i class="icon-angle-up"></i>

				</span>

			</div>

		</div>

	</div>

	<!-- END FOOTER -->

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

	<script src="media/js/app.js"></script>

	<script>
		jQuery(document).ready(function() {

			App.init();

			jQuery('#promo_carousel').carousel({

				interval : 10000,

				pause : 'hover'

			});

		});
	</script>

	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>