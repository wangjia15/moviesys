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

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<div class="navbar-inner">

			<div class="container">

				<!-- BEGIN LOGO -->

				<a class="brand" href="index.html">院线系统前台页面

				</a>

				<!-- END LOGO -->

				<!-- BEGIN HORIZANTAL MENU -->

					<div class="navbar hor-menu hidden-phone hidden-tablet">

					<div class="navbar-inner">

						<ul class="nav">

							<li class="visible-phone visible-tablet">
								<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

								<form class="sidebar-search">

									<div class="input-box">

										<a href="javascript:;" class="remove"></a> <input type="text"
											placeholder="Search..." /> <input type="button"
											class="submit" value=" " />

									</div>

								</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->

							</li>

							<li><a href="index.html"> 首页 </a></li>

						

							
							<li><a href="">影片</a></li>

							<li><a data-toggle="dropdown" class="dropdown-toggle"
								href="">影院 <span class="arrow"></span>

							</a>
                          <b class="caret-out"></b></li>

							<li><span class="hor-menu-search-form-toggler">&nbsp;</span>

								<div class="search-form hidden-phone hidden-tablet">

									<form class="form-search">

										<div class="input-append">

											<input type="text" placeholder="Search..." class="m-wrap">

											<button type="button" class="btn"></button>

										</div>

									</form>

								</div></li>

						</ul>

					</div>

				</div>

				<!-- END HORIZANTAL MENU -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<a href="javascript:;" class="btn-navbar collapsed"
					data-toggle="collapse" data-target=".nav-collapse"> <img
					src="media/image/menu-toggler.png" alt="" />

				</a>

				<!-- END RESPONSIVE MENU TOGGLER -->

				<!-- BEGIN TOP NAVIGATION MENU -->

				<ul class="nav pull-right">

					<!-- BEGIN NOTIFICATION DROPDOWN -->

					<li class="dropdown" id="header_notification_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-warning-sign"></i> <span class="badge">6</span>

					</a>

						<ul class="dropdown-menu extended notification">

							<li>

								<p>You have 14 new notifications</p>

							</li>

							<li><a href="#"> <span class="label label-success"><i
										class="icon-plus"></i></span> New user registered. <span class="time">Just
										now</span>

							</a></li>

							<li><a href="#"> <span class="label label-important"><i
										class="icon-bolt"></i></span> Server #12 overloaded. <span
									class="time">15 mins</span>

							</a></li>

							<li><a href="#"> <span class="label label-warning"><i
										class="icon-bell"></i></span> Server #2 not respoding. <span
									class="time">22 mins</span>

							</a></li>

							<li><a href="#"> <span class="label label-info"><i
										class="icon-bullhorn"></i></span> Application error. <span
									class="time">40 mins</span>

							</a></li>

							<li><a href="#"> <span class="label label-important"><i
										class="icon-bolt"></i></span> Database overloaded 68%. <span
									class="time">2 hrs</span>

							</a></li>

							<li><a href="#"> <span class="label label-important"><i
										class="icon-bolt"></i></span> 2 user IP blocked. <span class="time">5
										hrs</span>

							</a></li>

							<li class="external"><a href="#">See all notifications <i
									class="m-icon-swapright"></i></a></li>

						</ul></li>

					<!-- END NOTIFICATION DROPDOWN -->

					<!-- BEGIN INBOX DROPDOWN -->

					<li class="dropdown" id="header_inbox_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-envelope"></i> <span class="badge">5</span>

					</a>

						<ul class="dropdown-menu extended inbox">

							<li>

								<p>You have 12 new messages</p>

							</li>

							<li><a href="inbox.html?a=view"> <span class="photo"><img
										src="media/image/avatar2.jpg" alt="" /></span> <span class="subject">

										<span class="from">Lisa Wong</span> <span class="time">Just
											Now</span>

								</span> <span class="message"> Vivamus sed auctor nibh congue
										nibh. auctor nibh auctor nibh... </span>

							</a></li>

							<li><a href="inbox.html?a=view"> <span class="photo"><img
										src="media/image/avatar3.jpg" alt="" /></span> <span class="subject">

										<span class="from">Richard Doe</span> <span class="time">16
											mins</span>

								</span> <span class="message"> Vivamus sed congue nibh auctor
										nibh congue nibh. auctor nibh auctor nibh... </span>

							</a></li>

							<li><a href="inbox.html?a=view"> <span class="photo"><img
										src="media/image/avatar1.jpg" alt="" /></span> <span class="subject">

										<span class="from">Bob Nilson</span> <span class="time">2
											hrs</span>

								</span> <span class="message"> Vivamus sed nibh auctor nibh
										congue nibh. auctor nibh auctor nibh... </span>

							</a></li>

							<li class="external"><a href="inbox.html">See all
									messages <i class="m-icon-swapright"></i>
							</a></li>

						</ul></li>

					<!-- END INBOX DROPDOWN -->

					<!-- BEGIN TODO DROPDOWN -->

					<li class="dropdown" id="header_task_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-tasks"></i> <span class="badge">5</span>

					</a>

						<ul class="dropdown-menu extended tasks">

							<li>

								<p>You have 12 pending tasks</p>

							</li>

							<li><a href="#"> <span class="task"> <span
										class="desc">New release v1.2</span> <span class="percent">30%</span>

								</span> <span class="progress progress-success "> <span
										style="width: 30%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Application deployment</span> <span
										class="percent">65%</span>

								</span> <span class="progress progress-danger progress-striped active">

										<span style="width: 65%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Mobile app release</span> <span class="percent">98%</span>

								</span> <span class="progress progress-success"> <span
										style="width: 98%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Database migration</span> <span class="percent">10%</span>

								</span> <span class="progress progress-warning progress-striped">

										<span style="width: 10%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Web server upgrade</span> <span class="percent">58%</span>

								</span> <span class="progress progress-info"> <span
										style="width: 58%;" class="bar"></span>

								</span>

							</a></li>

							<li><a href="#"> <span class="task"> <span
										class="desc">Mobile development</span> <span class="percent">85%</span>

								</span> <span class="progress progress-success"> <span
										style="width: 85%;" class="bar"></span>

								</span>

							</a></li>

							<li class="external"><a href="#">See all tasks <i
									class="m-icon-swapright"></i></a></li>

						</ul></li>

					<!-- END TODO DROPDOWN -->

					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img alt=""
							src="media/image/avatar1_small.jpg" /> <span class="username">Bob
								Nilson</span> <i class="icon-angle-down"></i>

					</a>

						<ul class="dropdown-menu">

							<li><a href="extra_profile.html"><i class="icon-user"></i>
									My Profile</a></li>

							<li><a href="page_calendar.html"><i
									class="icon-calendar"></i> My Calendar</a></li>

							<li><a href="inbox.html"><i class="icon-envelope"></i>
									My Inbox(3)</a></li>

							<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>

							<li class="divider"></li>

							<li><a href="extra_lock.html"><i class="icon-lock"></i>
									Lock Screen</a></li>

							<li><a href="login.html"><i class="icon-key"></i> Log
									Out</a></li>

						</ul></li>

					<!-- END USER LOGIN DROPDOWN -->

				</ul>

				<!-- END TOP NAVIGATION MENU -->

			</div>

		</div>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

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
							
	<div class="widget-cinema-cinemadetail" id="pageCinemaCinemadetail">

<div id="pageletCinemadetail">













    <div class="clearfix">

    <div class="con-center">
        
<div class="widget-cinema-cinemadetail-intro clearfix" id="cinemaIntro">

    <div class="clearfix">
    <div class="con-left">
        <div class="left-area">
            <h2 class="title font-color"><s:property value="storename"/><em class="star"><i class="star-in" style="width: 62.4px;"></i></em><em class="record font12 nuomi-red">7.8</em></h2>
            <p class="addr font-grey">北京市海淀区远大路1号金源时代购物中心5层东首511<em class="line"></em>010-88878696</p>
            <div class="icons clearfix">
                
                
                
                <span class="service service-6"></span>
                
                <span class="service service-7"></span>
                
                <span class="service service-3"></span>
                
                <span class="service service-2"></span>
                
                <span class="service service-1"></span>
                
                <span class="service service-15"></span>
                
            </div>
        </div>
    </div>
        <div class="widget-cinema-detail-map">
    <div class="map-area con-right" id="mapArea">
        <div class="map" id="cinemaMap" style="overflow: hidden; position: relative; z-index: 0; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); text-align: left;"><div style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(&quot;http://api0.map.bdimg.com/images/openhand.cur&quot;) 8 8, default;"><div class="BMap_mask" style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; user-select: none; width: 226px; height: 137px;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;"><div style="position: absolute; overflow: visible; z-index: -100; left: 113px; top: 68px; display: block; transform: translate3d(0px, 0px, 0px);"><img src="http://online0.map.bdimg.com/tile/?qt=tile&amp;x=1580&amp;y=590&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170730" style="position: absolute; border: none; width: 256px; height: 256px; left: -83px; top: -259px; max-width: none; opacity: 1;"><img src="http://online4.map.bdimg.com/tile/?qt=tile&amp;x=1580&amp;y=589&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170730" style="position: absolute; border: none; width: 256px; height: 256px; left: -83px; top: -3px; max-width: none; opacity: 1;"><img src="http://online4.map.bdimg.com/tile/?qt=tile&amp;x=1579&amp;y=590&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170730" style="position: absolute; border: none; width: 256px; height: 256px; left: -339px; top: -259px; max-width: none; opacity: 1;"><img src="http://online3.map.bdimg.com/tile/?qt=tile&amp;x=1579&amp;y=589&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170730" style="position: absolute; border: none; width: 256px; height: 256px; left: -339px; top: -3px; max-width: none; opacity: 1;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none;"></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div></div><div class="pano_close" title="退出全景" style="z-index: 1201; display: none;"></div><a class="pano_pc_indoor_exit" title="退出室内景" style="z-index: 1201; display: none;"><span style="float:right;margin-right:12px;">出口</span></a></div>
        <a href="https://d.nuomi.com/inter/group" target="_blank" class="app">下载APP 随时随地查看影院地图</a>
        <span class="watch"></span>
    </div>
</div>
    </div>

    
    
    

    
    
    <div class="act nuomi-red clear">
        影院提前15分钟停止购票
    </div>
    

</div>


    </div>
    <div class="con-left">
        
<div class="widget-cinema-cinemadetail-contentnav">
    <div class="list" id="detailNav">
        <a class="active" href="#cinemaMovielist" target="_self" data-log="{'da_src':'webCinemaDetailPg.navBk.infoLnk'}">影讯购票</a>
        
        <a href="#cinemaDetail" target="_self" data-log="{'da_src':'webCinemaDetailPg.navBk.detailLnk'}">影院详情</a>
    </div>
</div>
        






<div class="widget-cinema-cinemadetail-movielist" id="cinemaMovielist">

    <div class="img-bg" id="sliderBg" style="background:url('https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/738b4710b912c8fc6d09d266f6039245d78821a6.jpg') no-repeat center top transparent;background-size:100% auto;"></div>
    <div class="flexslider" id="flexslider">

        

        
        <div class="detail" id="movieDetail">
            
            <h2 class="movie-detail font-color active hide clearfix" data-id="62880">
                <em>战狼2</em>
                <em class="star">
                    <i class="star-in" style="width: 76.8px;"></i>
                </em><em class="record font12 nuomi-red">9.6</em>
            </h2>
            
            <h2 class="movie-detail font-color hide clearfix" data-id="62920">
                <em>三生三世十里桃花</em>
                <em class="star">
                    <i class="star-in" style="width: 67.2px;"></i>
                </em><em class="record font12 nuomi-red">8.4</em>
            </h2>
            
            <h2 class="movie-detail font-color hide clearfix" data-id="62975">
                <em>建军大业</em>
                <em class="star">
                    <i class="star-in" style="width: 70.4px;"></i>
                </em><em class="record font12 nuomi-red">8.8</em>
            </h2>
            
            <h2 class="movie-detail font-color hide clearfix" data-id="94874">
                <em>神偷奶爸3</em>
                <em class="star">
                    <i class="star-in" style="width: 70.4px;"></i>
                </em><em class="record font12 nuomi-red">8.8</em>
            </h2>
            
            <h2 class="movie-detail font-color hide clearfix" data-id="95127">
                <em>谁是球王</em>
                <em class="star">
                    <i class="star-in" style="width: 58.4px;"></i>
                </em><em class="record font12 nuomi-red">7.3</em>
            </h2>
            
            <h2 class="movie-detail font-color hide clearfix" data-id="10018">
                <em>绣春刀II：修罗战场</em>
                <em class="star">
                    <i class="star-in" style="width: 66.4px;"></i>
                </em><em class="record font12 nuomi-red">8.3</em>
            </h2>
            
            <h2 class="movie-detail font-color hide clearfix" data-id="95088">
                <em>赛尔号大电影6：圣者无敌</em>
                <em class="star">
                    <i class="star-in" style="width: 66.4px;"></i>
                </em><em class="record font12 nuomi-red">8.3</em>
            </h2>
            
            <h2 class="movie-detail font-color hide clearfix" data-id="95016">
                <em>大护法</em>
                <em class="star">
                    <i class="star-in" style="width: 65.6px;"></i>
                </em><em class="record font12 nuomi-red">8.2</em>
            </h2>
            
        </div>
    <div class="flex-viewport" style="overflow: hidden; position: relative;"><ul class="slides" style="width: 1800%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
            
            
            <li data-movieid="62880" class="active hide" data-bgimg="https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/738b4710b912c8fc6d09d266f6039245d78821a6.jpg" data-log="{'da_src':'webCinemaDetailPg.movielistBk.posterLnk'}" style="width: 140px; margin-right: 18px; float: left; display: block;">
                <div class="img">
                    <img src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/738b4710b912c8fc6c34d366f6039245d7882151.jpg" alt="" draggable="false">

                    

                    
                    
                    
                    
                    
                    
                </div>
                <div class="info">
                    <p class="name font14">战狼2</p>
                    <span class="score fr">9.6</span>
                    <span class="intro font-shadow">犯我中华者 虽远必诛</span>
                    <em class="more font-shadow" data-url="/movie/detail" data-data="{&quot;movieId&quot;:62880}">详情&gt;</em>
                </div>
                <input class="movie-name" type="hidden" value="战狼2">
                <input class="movie-score" type="hidden" value="96">
            </li>
            
            
            <li data-movieid="62920" class="hide" data-bgimg="https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/060828381f30e9245de185c546086e061c95f7f9.jpg" data-log="{'da_src':'webCinemaDetailPg.movielistBk.posterLnk'}" style="width: 140px; margin-right: 18px; float: left; display: block;">
                <div class="img">
                    <img src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/0b55b319ebc4b7458f11a5e2c5fc1e178b8215b8.jpg" alt="" draggable="false">

                    

                    
                    
                    
                    
                    <span class="tag tag-new">新片</span>
                    
                    
                    
                </div>
                <div class="info">
                    <p class="name font14">三生三世十里桃花</p>
                    <span class="score fr">8.4</span>
                    <span class="intro font-shadow">八荒四海 为你而来</span>
                    <em class="more font-shadow" data-url="/movie/detail" data-data="{&quot;movieId&quot;:62920}">详情&gt;</em>
                </div>
                <input class="movie-name" type="hidden" value="三生三世十里桃花">
                <input class="movie-score" type="hidden" value="84">
            </li>
            
            
            <li data-movieid="62975" class="hide" data-bgimg="https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/279759ee3d6d55fb94bc461b67224f4a20a4dd90.jpg" data-log="{'da_src':'webCinemaDetailPg.movielistBk.posterLnk'}" style="width: 140px; margin-right: 18px; float: left; display: block;">
                <div class="img">
                    <img src="https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/b90e7bec54e736d15a35bb3591504fc2d56269ec.jpg" alt="" draggable="false">

                    

                    
                    
                    
                    
                    
                    
                </div>
                <div class="info">
                    <p class="name font14">建军大业</p>
                    <span class="score fr">8.8</span>
                    <span class="intro font-shadow">星星之火 可以燎原</span>
                    <em class="more font-shadow" data-url="/movie/detail" data-data="{&quot;movieId&quot;:62975}">详情&gt;</em>
                </div>
                <input class="movie-name" type="hidden" value="建军大业">
                <input class="movie-score" type="hidden" value="88">
            </li>
            
            
            <li data-movieid="94874" class="hide" data-bgimg="https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/0ff41bd5ad6eddc4afd44e8033dbb6fd5266339e.jpg" data-log="{'da_src':'webCinemaDetailPg.movielistBk.posterLnk'}" style="width: 140px; margin-right: 18px; float: left; display: block;">
                <div class="img">
                    <img src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/0e2442a7d933c895c5326100db1373f082020078.jpg" alt="" draggable="false">

                    

                    
                    
                    
                    
                    
                    
                </div>
                <div class="info">
                    <p class="name font14">神偷奶爸3</p>
                    <span class="score fr">8.8</span>
                    <span class="intro font-shadow">小黄人旋风回归</span>
                    <em class="more font-shadow" data-url="/movie/detail" data-data="{&quot;movieId&quot;:94874}">详情&gt;</em>
                </div>
                <input class="movie-name" type="hidden" value="神偷奶爸3">
                <input class="movie-score" type="hidden" value="88">
            </li>
            
            
            <li data-movieid="95127" class="hide" data-bgimg="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/a5c27d1ed21b0ef4e78f63efd7c451da81cb3e18.jpg" data-log="{'da_src':'webCinemaDetailPg.movielistBk.posterLnk'}" style="width: 140px; margin-right: 18px; float: left; display: block;">
                <div class="img">
                    <img src="https://gss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/bd315c6034a85edf45ce009243540923dc5475c5.jpg" alt="" draggable="false">

                    

                    
                    
                    
                    
                    <span class="tag tag-new">新片</span>
                    
                    
                    
                </div>
                <div class="info">
                    <p class="name font14">谁是球王</p>
                    <span class="score fr">7.3</span>
                    <span class="intro font-shadow">你相信的就要实现</span>
                    <em class="more font-shadow" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95127}">详情&gt;</em>
                </div>
                <input class="movie-name" type="hidden" value="谁是球王">
                <input class="movie-score" type="hidden" value="73">
            </li>
            
            
            <li data-movieid="10018" class="hide" data-bgimg="https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/d1160924ab18972b462b7151eccd7b899e510a13.jpg" data-log="{'da_src':'webCinemaDetailPg.movielistBk.posterLnk'}" style="width: 140px; margin-right: 18px; float: left; display: block;">
                <div class="img">
                    <img src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/f3d3572c11dfa9ec56e5208c68d0f703908fc166.jpg" alt="" draggable="false">

                    

                    
                    
                    
                    
                    
                    
                </div>
                <div class="info">
                    <p class="name font14">绣春刀II：修罗战场</p>
                    <span class="score fr">8.3</span>
                    <span class="intro font-shadow">沈炼陷阴谋 同僚查真相</span>
                    <em class="more font-shadow" data-url="/movie/detail" data-data="{&quot;movieId&quot;:10018}">详情&gt;</em>
                </div>
                <input class="movie-name" type="hidden" value="绣春刀II：修罗战场">
                <input class="movie-score" type="hidden" value="83">
            </li>
            
            
            <li data-movieid="95088" class="hide" data-bgimg="https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/bba1cd11728b471003b1cb57c9cec3fdfd03238a.jpg" data-log="{'da_src':'webCinemaDetailPg.movielistBk.posterLnk'}" style="width: 140px; margin-right: 18px; float: left; display: block;">
                <div class="img">
                    <img src="https://gss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/f2deb48f8c5494ee78a8388227f5e0fe98257ea6.jpg" alt="" draggable="false">

                    

                    
                    
                    
                    <span class="tag tag-pre">预售</span>
                    
                    
                </div>
                <div class="info">
                    <p class="name font14">赛尔号大电影6：圣者无敌</p>
                    <span class="score fr">8.3</span>
                    <span class="intro font-shadow">船长一声吼 地球抖三抖</span>
                    <em class="more font-shadow" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95088}">详情&gt;</em>
                </div>
                <input class="movie-name" type="hidden" value="赛尔号大电影6：圣者无敌">
                <input class="movie-score" type="hidden" value="83">
            </li>
            
            
            <li data-movieid="95016" class="hide" data-bgimg="https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/e824b899a9014c087cee1f31007b02087af4f448.jpg" data-log="{'da_src':'webCinemaDetailPg.movielistBk.posterLnk'}" style="width: 140px; margin-right: 18px; float: left; display: block;">
                <div class="img">
                    <img src="https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/faf2b2119313b07e9030679c06d7912396dd8c90.jpg" alt="" draggable="false">

                    

                    
                    
                    
                    
                    
                    
                </div>
                <div class="info">
                    <p class="name font14">大护法</p>
                    <span class="score fr">8.2</span>
                    <span class="intro font-shadow">感谢给我逆境的重生</span>
                    <em class="more font-shadow" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95016}">详情&gt;</em>
                </div>
                <input class="movie-name" type="hidden" value="大护法">
                <input class="movie-score" type="hidden" value="82">
            </li>
            

            
            <li data-movieid="" class="empty" style="width: 140px; margin-right: 18px; float: left; display: block;">
                <div class="img">

                </div>
            </li>
        </ul></div><ul class="flex-direction-nav"><li class="flex-nav-prev"><a class="flex-prev" href="#">Previous</a></li><li class="flex-nav-next"><a class="flex-next" href="#">Next</a></li></ul></div>

    <div class="line">
        <!--em class="arrow"><i class="arrow-in"></em></i-->
    </div>

    <div id="datelist">
        
        

        <div class="date active hide" data-movieid="62880">
            
            <div class="datelist">
                

                
                <span data-id="1501689600000" class="active hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">今天8月3日 </span>
                
                
                

                
                <span data-id="1501776000000" class="hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">明天8月4日 </span>
                
                
                

                
                <span data-id="1501862400000" class="hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">后天8月5日 </span>
                
                
                
            </div>

            

            
            <div class="session-list active hide" data-id="1501689600000">
            
                <ul>
                    
                      <s:iterator value="schedules" var="s">
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start"><s:property value="#s.playtime"/></p>
                                        <p class="end"><s:property value="#s.endtime"/>散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        <s:property value="#s.type"/>
                                    </div>
                                    <div class="hall fl font14"> <s:property value="#s.hallname"/></div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red"><s:property value="#s.price"/></span>
                                            <del class="font-shadow"></del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                        <s:property value="#s.seat"/>
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:95127,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4292686&quot;,&quot;date&quot;:1501948800000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        </s:iterator>
                     
                        
                    
                </ul>
            </div>
            

            
            <div class="session-list hide" data-id="1501776000000">
            
                <ul>
                    
                    
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">09:30</p>
                                        <p class="end">11:33散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位93%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336200&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">10:05</p>
                                        <p class="end">12:08散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 弹幕互动8号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336201&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">10:55</p>
                                        <p class="end">12:58散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 5厅VIP</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">76</span>
                                            <del class="font-shadow">120</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位86%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336202&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">11:55</p>
                                        <p class="end">13:58散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336203&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">12:30</p>
                                        <p class="end">14:33散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 弹幕互动8号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位95%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336204&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">13:30</p>
                                        <p class="end">15:33散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 6号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位33%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4248022&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">14:20</p>
                                        <p class="end">16:23散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位62%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336207&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">14:55</p>
                                        <p class="end">16:58散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 弹幕互动8号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位80%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336209&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">15:25</p>
                                        <p class="end">17:28散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 追美互动厅2号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位91%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336210&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">15:55</p>
                                        <p class="end">17:58散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 5厅VIP</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">76</span>
                                            <del class="font-shadow">120</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位95%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336211&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">16:45</p>
                                        <p class="end">18:48散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位94%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336213&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">17:50</p>
                                        <p class="end">19:53散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 追美互动厅2号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位98%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336215&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">18:20</p>
                                        <p class="end">20:23散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 5厅VIP</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">76</span>
                                            <del class="font-shadow">120</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位72%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336216&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">18:40</p>
                                        <p class="end">20:43散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 9号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位92%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336217&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">19:10</p>
                                        <p class="end">21:13散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位87%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336219&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">19:40</p>
                                        <p class="end">21:43散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 5100西藏冰川矿泉水厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位74%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336221&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">20:15</p>
                                        <p class="end">22:18散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 追美互动厅2号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位94%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336222&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">20:45</p>
                                        <p class="end">22:48散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 5厅VIP</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">76</span>
                                            <del class="font-shadow">120</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336223&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">21:05</p>
                                        <p class="end">23:08散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 9号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位97%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336224&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">21:35</p>
                                        <p class="end">23:38散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336226&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">22:05</p>
                                        <p class="end">00:08散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 5100西藏冰川矿泉水厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位89%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336228&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">22:40</p>
                                        <p class="end">00:43散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 追美互动厅2号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位97%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336229&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">23:30</p>
                                        <p class="end">01:33散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 9号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4336231&quot;,&quot;date&quot;:1501776000000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                    
                </ul>
            </div>
            

            
            <div class="session-list hide" data-id="1501862400000">
            
                <ul>
                    
                    
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">09:30</p>
                                        <p class="end">11:33散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 追美互动厅2号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位98%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342934&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">10:10</p>
                                        <p class="end">12:13散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 弹幕互动8号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位98%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342935&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">10:50</p>
                                        <p class="end">12:53散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 6号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位96%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342936&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">12:35</p>
                                        <p class="end">14:38散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 弹幕互动8号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位98%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342938&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">13:15</p>
                                        <p class="end">15:18散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 6号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位98%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342940&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">13:45</p>
                                        <p class="end">15:48散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位97%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342942&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">14:15</p>
                                        <p class="end">16:18散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 追美互动厅2号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位97%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342943&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">15:00</p>
                                        <p class="end">17:03散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 弹幕互动8号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位99%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342946&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">15:45</p>
                                        <p class="end">17:48散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 6号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位98%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342947&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">16:10</p>
                                        <p class="end">18:13散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位99%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342948&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">16:40</p>
                                        <p class="end">18:43散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 追美互动厅2号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位97%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342949&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">17:25</p>
                                        <p class="end">19:28散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 弹幕互动8号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342952&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">18:10</p>
                                        <p class="end">20:13散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 9号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342953&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">18:35</p>
                                        <p class="end">20:38散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位98%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342955&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">19:05</p>
                                        <p class="end">21:08散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 追美互动厅2号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位96%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342956&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">19:50</p>
                                        <p class="end">21:53散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 弹幕互动8号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位96%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342959&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">20:35</p>
                                        <p class="end">22:38散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 9号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342961&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">21:00</p>
                                        <p class="end">23:03散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 1号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342962&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">21:30</p>
                                        <p class="end">23:33散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 追美互动厅2号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342964&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">22:15</p>
                                        <p class="end">00:18散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 弹幕互动8号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342966&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">23:00</p>
                                        <p class="end">01:03散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 9号厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:62880,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342967&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                    
                </ul>
            </div>
            
        </div>
        
        

        <div class="date hide" data-movieid="62920">
            
            <div class="datelist">
                

                
                <span data-id="1501689600000" class="active hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">今天8月3日 </span>
                
                
                

                
                <span data-id="1501776000000" class="hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">明天8月4日 </span>
                
                
                

                
                <span data-id="1501862400000" class="hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">后天8月5日 </span>
                
                
                

                
                <span data-id="1501948800000" class="hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">周日8月6日 </span>
                
                
                
            </div>

            

            
            <div class="session-list " >
            
             
            </div>
            

            
          
        
        

        <div class="date hide" data-movieid="95127">
            
            <div class="datelist">
                

                
                <span data-id="1501948800000" class="active hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">周日8月6日 </span>
                
                
                
            </div>

            

            
            <div class="session-list active hide" data-id="1501948800000">
            
                <ul>
                    
                    
                </ul>
            </div>
            
        </div>
        
        

        <div class="date hide" data-movieid="10018">
            
            <div class="datelist">
                

                
                <span data-id="1501862400000" class="active hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">后天8月5日 </span>
                
                
                
            </div>

            

            
            <div class="session-list active hide" data-id="1501862400000">
            
                <ul>
                    
                    
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">21:55</p>
                                        <p class="end">23:55散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        2D
                                    </div>
                                    <div class="hall fl font14"> 5厅VIP</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">64</span>
                                            <del class="font-shadow">120</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:10018,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342965&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                    
                </ul>
            </div>
            
        </div>
        
        

        <div class="date hide" data-movieid="95088">
            
            <div class="datelist">
                

                
                <span data-id="1501862400000" class="active hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">后天8月5日 </span>
                
                
                
            </div>

            

            
            <div class="session-list active hide" data-id="1501862400000">
            
                <ul>
                    
                    
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">13:00</p>
                                        <p class="end">14:30散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 5100西藏冰川矿泉水厅</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">69</span>
                                            <del class="font-shadow">130</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位100%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:95088,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342939&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                    
                </ul>
            </div>
            
        </div>
        
        

        <div class="date hide" data-movieid="95016">
            
            <div class="datelist">
                

                
                <span data-id="1501862400000" class="active hide" data-log="{'da_src':'webCinemaDetailPg.movielistBk.dateBtn'}">后天8月5日 </span>
                
                
                
            </div>

            

            
            <div class="session-list active hide" data-id="1501862400000">
            
                <ul>
                    
                    
                        
                            <li class="clearfix">
                                    <div class="time fl">
                                        <p class="start">08:35</p>
                                        <p class="end">10:08散场</p>
                                    </div>
                                    <div class="type fl font14">
                                        3D
                                    </div>
                                    <div class="hall fl font14"> 5厅VIP</div>
                                    <div class="price fl">
                                        <p><span class="dollar nuomi-red">￥</span><span class="num nuomi-red">76</span>
                                            <del class="font-shadow">120</del>
                                        </p>
                                    </div>
                                    <div class="seat fl">
                                        
                                            余位95%
                                        
                                    </div>

                                    
                                    <a href="javascript:;" data-url="/buy/seat" data-data="{&quot;movieId&quot;:95016,&quot;cinemaId&quot;:148,&quot;seqNo&quot;:&quot;4342933&quot;,&quot;date&quot;:1501862400000}" class="btn-select fr border-red nuomi-red font16" data-log="{'da_src':'webCinemaDetailPg.movielistBk.buyBtn'}">选座购票</a>
                                    
                            </li>
                        
                    
                </ul>
            </div>
            
        </div>
        
    </div>
</div>




        
<div class="widget-common-coupon">
    
</div>
        


<div class="widget-cinema-cinemadetail-detail" id="cinemaDetail">
    <h2 class="title font-grey">影院详情</h2>
    <div class="intro font14 black"></div>
    <!--p class="time">营业时间：08:00 - 24:00</p-->
    

    
    <div class="service-list">
        <ul class="list clearfix">

            
            <li class="feature feature-6">
                <!--<span class="name service-wifi">儿童票</span>-->
                <span class="name service-6">儿童票</span>
                <span class="des">1.3m以下半价无座（每位成人限带1名，3D影片无儿童3D眼镜提供）；</span>
            </li>
            
            <li class="feature feature-7">
                <!--<span class="name service-wifi">3D眼镜</span>-->
                <span class="name service-7">3D眼镜</span>
                <span class="des">免押金</span>
            </li>
            
            <li class="feature feature-3">
                <!--<span class="name service-wifi">停车</span>-->
                <span class="name service-3">停车</span>
                <span class="des">停车楼面积12万平方米,免费停车位10000个</span>
            </li>
            
            <li class="feature feature-2">
                <!--<span class="name service-wifi">地铁</span>-->
                <span class="name service-2">地铁</span>
                <span class="des">地铁10号线长春桥站680米; </span>
            </li>
            
            <li class="feature feature-1">
                <!--<span class="name service-wifi">IMAX</span>-->
                <span class="name service-1">IMAX</span>
                <span class="des">IMAX, VIP</span>
            </li>
            
            <li class="feature feature-15">
                <!--<span class="name service-wifi">undefined</span>-->
                <span class="name service-15">undefined</span>
                <span class="des">可改签</span>
            </li>
            
        </ul>
    </div>
    
</div>


    </div>
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