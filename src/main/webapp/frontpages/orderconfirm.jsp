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
<link href="frontpages/mycss3.css" rel="stylesheet" type="text/css"/>

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


<div class="main" id="main">

    <div class="content" id="content">
        
	
<div class="widget-buy-orderconfirm" id="widgetBuyOrderconfirm">
    

<div class="widget-buy-orderlist">
	<h2 class="title font16 clearfix">
		确认订单信息
		<span class="fr font12 font-shadow">订单号：102931136124682240</span>
	</h2>
	<div class="wrap-content">
		<div class="cuttime-content nuomi-red">
            
			请在14分钟内完成付款，超时系统将自动释放已选座位
            
			<div class="cuttime fr">
				<span class="font-shadow">剩余支付时间:</span>
				<time class="nuomi-red" data-selector="cuttime">12:17</time>
			</div>
		</div>
		<ul class="order-list">
			<!-- 影片 -->
			<li class="item-tr">
				<label class="item-td check"></label>
				<div class="item-td order-info">
					<!--<a class="movie-pic" href="javascript:;" target="_blank">
						<img src="" alt="">
					</a>-->
					<div class="order-detail">
						<p class="order-name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:63043}">二十二</p>
						<p class="type-time font-shadow">
							<span>国语&nbsp;&nbsp;2D</span>
                            <!--<span class="last">1503117000</span>-->
						</p>
						<ul class="threat-info font14">
                            
                            <li class="cursor-pointer" data-url="/cinema/detail" data-data="{&quot;cinemaId&quot;:148}">
								<span class="font-shadow">影院：</span>星美国际影城(北京金源IMAX店)
							</li>
                            

                            
							<li>
								<span class="font-shadow">影厅：</span>1号厅
							</li>
                            

                            
                            
							<li>
								<span class="font-shadow">场次：</span>
								8月19号&nbsp;&nbsp;&nbsp;
                                周六&nbsp;&nbsp;&nbsp;
                                12:30
							</li>
                            
						</ul>
						<ul class="seat font14">
							
                            
								<li>
									<i></i>3排18座<em></em>
								</li>
                            
							
                            
							
						</ul>
					</div>
				</div>
				<div class="item-td split-levline1"></div>
				<div class="item-td order-edit font-shadow font14">
					接收取票码的手机号：
					<p class="phone-eidt">
                        
						<span id="phoneNum">13880648565</span>
						<a href="javascript:;" class="nuomi-red" data-selector="edit-phone">修改</a>
					</p>
					<p class="phone-eidt-in hide">
						<input data-selector="edit-phone-inp" class="group-input box-sizing font12" placeholder="请输入接受取票码的手机号" value="" autocomplete="off">
						<a class="confirm-but box-sizing active" href="javascript:;" data-selector="edit-phone-comfirm">确认</a>
					</p>
				</div>
				<div class="item-td split-levline1"></div>
				<div class="item-td order-num">
					金额小计:
					<p class="price">¥58.00</p>
				</div>
				<!--<div class="split-hozline"></div>-->
			</li>
			<!-- 衍生品 -->

			
		</ul>
	</div>
	<!-- 活动与抵用券 -->
	<!-- <div class="activity-coupon">
		<label>
			<span class="s-check"><input type="checkbox" value=""/></span>
			活动与抵用券
		</label>
		<div class="select-button">
			<span>好莱坞系列立减10，每位用户限2张</span>
			<em class="fr"></em>
			<div class="dropdown hide">
				<p class="title">活动与抵用券不可同时使用</p>
				<dl class="detail">
					<dt>活动</dt>
					<dd>
						<label>
							<input type="radio" name="activity" value="">
							<span>好莱坞立刻减少10，美味用户限2张</span>
						</label>
					</dd>
					<dd class="diabled">
						<label>
							<input type="radio" name="activity" value="" disabled="disabled">
							<span>好莱坞立刻减少10，美味用户限2张好莱坞立刻减少10，美味用户限2张好莱坞立刻减少10，美味用户限2张</span>
						</label>
					</dd>
					<dt>抵用券</dt>
					<dd>
						<input type="text"  placeholder="请输入抵用券兑换码" name="code" value="">
					</dd>
					<dd>
						<label>
							<input type="radio" name="coupon" value="">
							<span>好莱坞立刻减少10，美味用户限2张</span>
						</label>
					</dd>
				</dl>
			</div>
		</div>
	</div> -->
	<!-- 红包支付 -->
	<!-- <div class="activity-coupon">
		<label>
			<span class="s-check"><input type="checkbox" value=""/></span>
			红包支付<span class="font12 font-shadow">(当前余额&nbsp;¥32.05)<span>
		</label>
	</div> -->
	<div class="confirm font-shadow text-right">
		<p class="total-money">实际支付：<span class="nuomi-red" data-selector="totalPrice">58.00元</span></p>
        
            <a class="confirm-button back-red" href="javascript:;" data-selector="pay">确认并去支付</a>
        
	</div>
</div>




</div>



    </div>

</div>


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