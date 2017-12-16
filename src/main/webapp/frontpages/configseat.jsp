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
<link href="frontpages/mycss2.css" rel="stylesheet" type="text/css"/>

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
        
<div class="widget-common-steps">
    <ul class="step-list clearfix">
        <li>1.选择影片场次<span class="arrow"><em class="arrow-in"></em></span></li>
        <li class="active">2. 选座并填手机号<span class="arrow"><em class="arrow-in"></em></span></li>
        <li>3. 提交并支付订单<span class="arrow"><em class="arrow-in"></em></span></li>
        <li>4. 影院终端取票</li>
    </ul>
</div>

<div class="widget-buy-seat clearfix" id="widgetBuySeat">
    <div class="content-left fl">
        <div id="pageletSelect">












<div class="widget-buy-seat-select">

    <div id="loading" class="loading hide">
        <span class="img">加载中...</span>
    </div>
    <div class="empty text-center hide" id="emptyMsg">当前没有可售座位</div>

    <div id="seatArea" class="seat-area">
        <div id="screenInfo" class="screen-info">
            <p class="font14 font-grey" id="theaterName">1号厅</p>
        </div>
        <div class="rows">
            <ul>
                
                <li>1</li>
                
                
                
                
                
                
                <li>2</li>
                
                
                
                
                <li>3</li>
                
                
                
                
                <li>4</li>
                
                
                
                
                <li>5</li>
                
                
                
                
                <li>6</li>
                
                
                
                
                <li>7</li>
                
                
                
                
                <li>8</li>
                
                
                
                
                <li>9</li>
                
                
                
                
                <li>10</li>
                
                
                
                
                <li>11</li>
                
                
                
                
                <li>12</li>
                
                
                
                
            </ul>
        </div>
        <div class="seats-area" id="seatsArea" style="width: 100%; height: 572px;">
            <div id="seatsScroll" class="seats-scroll" style="top: 0px; left: -205.5px;">
                <div class="center-pos font14 font-grey">银幕中央</div>
                <div id="centerLine" class="center-line" style="left: 539px; height: 523px;"></div>
                <ul id="seatList" class="seat-list" style="width: 1092px; height: 572px;">
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010105$01010105_1_1" data-rowno="1" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010106$01010106_1_2" data-rowno="1" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010107$01010107_1_3" data-rowno="1" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010108$01010108_1_4" data-rowno="1" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010109$01010109_1_5" data-rowno="1" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010110$01010110_1_6" data-rowno="1" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010111$01010111_1_7" data-rowno="1" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010112$01010112_1_8" data-rowno="1" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010113$01010113_1_9" data-rowno="1" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010114$01010114_1_10" data-rowno="1" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010115$01010115_1_11" data-rowno="1" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010116$01010116_1_12" data-rowno="1" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010117$01010117_1_13" data-rowno="1" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010118$01010118_1_14" data-rowno="1" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010119$01010119_1_15" data-rowno="1" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010120$01010120_1_16" data-rowno="1" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010121$01010121_1_17" data-rowno="1" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010202$01010202_2_1" data-rowno="2" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010205$01010205_2_2" data-rowno="2" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010206$01010206_2_3" data-rowno="2" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010207$01010207_2_4" data-rowno="2" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010208$01010208_2_5" data-rowno="2" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010209$01010209_2_6" data-rowno="2" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010210$01010210_2_7" data-rowno="2" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010211$01010211_2_8" data-rowno="2" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010212$01010212_2_9" data-rowno="2" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010213$01010213_2_10" data-rowno="2" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010214$01010214_2_11" data-rowno="2" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010215$01010215_2_12" data-rowno="2" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010216$01010216_2_13" data-rowno="2" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010217$01010217_2_14" data-rowno="2" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010218$01010218_2_15" data-rowno="2" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010219$01010219_2_16" data-rowno="2" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010220$01010220_2_17" data-rowno="2" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010221$01010221_2_18" data-rowno="2" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010301$01010301_3_1" data-rowno="3" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010302$01010302_3_2" data-rowno="3" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010305$01010305_3_3" data-rowno="3" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010306$01010306_3_4" data-rowno="3" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010307$01010307_3_5" data-rowno="3" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010308$01010308_3_6" data-rowno="3" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010309$01010309_3_7" data-rowno="3" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010310$01010310_3_8" data-rowno="3" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010311$01010311_3_9" data-rowno="3" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010312$01010312_3_10" data-rowno="3" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010313$01010313_3_11" data-rowno="3" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010314$01010314_3_12" data-rowno="3" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010315$01010315_3_13" data-rowno="3" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010316$01010316_3_14" data-rowno="3" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010317$01010317_3_15" data-rowno="3" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010318$01010318_3_16" data-rowno="3" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010319$01010319_3_17" data-rowno="3" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010320$01010320_3_18" data-rowno="3" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010321$01010321_3_19" data-rowno="3" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010401$01010401_4_1" data-rowno="4" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010402$01010402_4_2" data-rowno="4" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010405$01010405_4_3" data-rowno="4" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010406$01010406_4_4" data-rowno="4" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010407$01010407_4_5" data-rowno="4" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010408$01010408_4_6" data-rowno="4" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010409$01010409_4_7" data-rowno="4" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010410$01010410_4_8" data-rowno="4" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010411$01010411_4_9" data-rowno="4" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010412$01010412_4_10" data-rowno="4" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010413$01010413_4_11" data-rowno="4" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010414$01010414_4_12" data-rowno="4" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat  seat-selected" data-seatno="01010415$01010415_4_13" data-rowno="4" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010416$01010416_4_14" data-rowno="4" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010417$01010417_4_15" data-rowno="4" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010418$01010418_4_16" data-rowno="4" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010419$01010419_4_17" data-rowno="4" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010420$01010420_4_18" data-rowno="4" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010421$01010421_4_19" data-rowno="4" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010501$01010501_5_1" data-rowno="5" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010502$01010502_5_2" data-rowno="5" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010505$01010505_5_3" data-rowno="5" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010506$01010506_5_4" data-rowno="5" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010507$01010507_5_5" data-rowno="5" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010508$01010508_5_6" data-rowno="5" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010509$01010509_5_7" data-rowno="5" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010510$01010510_5_8" data-rowno="5" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010511$01010511_5_9" data-rowno="5" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010512$01010512_5_10" data-rowno="5" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010513$01010513_5_11" data-rowno="5" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat" data-seatno="01010514$01010514_5_12" data-rowno="5" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010515$01010515_5_13" data-rowno="5" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010516$01010516_5_14" data-rowno="5" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010517$01010517_5_15" data-rowno="5" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010518$01010518_5_16" data-rowno="5" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010519$01010519_5_17" data-rowno="5" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010520$01010520_5_18" data-rowno="5" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010521$01010521_5_19" data-rowno="5" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010601$01010601_6_1" data-rowno="6" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010602$01010602_6_2" data-rowno="6" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010605$01010605_6_3" data-rowno="6" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010606$01010606_6_4" data-rowno="6" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010607$01010607_6_5" data-rowno="6" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010608$01010608_6_6" data-rowno="6" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010609$01010609_6_7" data-rowno="6" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010610$01010610_6_8" data-rowno="6" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010611$01010611_6_9" data-rowno="6" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010612$01010612_6_10" data-rowno="6" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010613$01010613_6_11" data-rowno="6" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010614$01010614_6_12" data-rowno="6" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010615$01010615_6_13" data-rowno="6" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010616$01010616_6_14" data-rowno="6" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010617$01010617_6_15" data-rowno="6" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010618$01010618_6_16" data-rowno="6" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010619$01010619_6_17" data-rowno="6" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010620$01010620_6_18" data-rowno="6" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010621$01010621_6_19" data-rowno="6" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010701$01010701_7_1" data-rowno="7" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010702$01010702_7_2" data-rowno="7" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010705$01010705_7_3" data-rowno="7" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010706$01010706_7_4" data-rowno="7" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010707$01010707_7_5" data-rowno="7" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010708$01010708_7_6" data-rowno="7" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010709$01010709_7_7" data-rowno="7" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010710$01010710_7_8" data-rowno="7" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010711$01010711_7_9" data-rowno="7" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010712$01010712_7_10" data-rowno="7" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        
                        <span class="seat seat-sold" data-seatno="01010713$01010713_7_11" data-rowno="7" data-colno="11"></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        
                        <span class="seat seat-sold" data-seatno="01010714$01010714_7_12" data-rowno="7" data-colno="12"></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010715$01010715_7_13" data-rowno="7" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010716$01010716_7_14" data-rowno="7" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010717$01010717_7_15" data-rowno="7" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010718$01010718_7_16" data-rowno="7" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010719$01010719_7_17" data-rowno="7" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010720$01010720_7_18" data-rowno="7" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010721$01010721_7_19" data-rowno="7" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010801$01010801_8_1" data-rowno="8" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010802$01010802_8_2" data-rowno="8" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010805$01010805_8_3" data-rowno="8" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010806$01010806_8_4" data-rowno="8" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010807$01010807_8_5" data-rowno="8" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010808$01010808_8_6" data-rowno="8" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010809$01010809_8_7" data-rowno="8" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010810$01010810_8_8" data-rowno="8" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010811$01010811_8_9" data-rowno="8" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010812$01010812_8_10" data-rowno="8" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010813$01010813_8_11" data-rowno="8" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010814$01010814_8_12" data-rowno="8" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010815$01010815_8_13" data-rowno="8" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010816$01010816_8_14" data-rowno="8" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010817$01010817_8_15" data-rowno="8" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010818$01010818_8_16" data-rowno="8" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010819$01010819_8_17" data-rowno="8" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010820$01010820_8_18" data-rowno="8" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010821$01010821_8_19" data-rowno="8" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010901$01010901_9_1" data-rowno="9" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010902$01010902_9_2" data-rowno="9" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010905$01010905_9_3" data-rowno="9" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010906$01010906_9_4" data-rowno="9" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010907$01010907_9_5" data-rowno="9" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010908$01010908_9_6" data-rowno="9" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010909$01010909_9_7" data-rowno="9" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010910$01010910_9_8" data-rowno="9" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010911$01010911_9_9" data-rowno="9" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010912$01010912_9_10" data-rowno="9" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010913$01010913_9_11" data-rowno="9" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010914$01010914_9_12" data-rowno="9" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010915$01010915_9_13" data-rowno="9" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010916$01010916_9_14" data-rowno="9" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat" data-seatno="01010917$01010917_9_15" data-rowno="9" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010918$01010918_9_16" data-rowno="9" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010919$01010919_9_17" data-rowno="9" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010920$01010920_9_18" data-rowno="9" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01010921$01010921_9_19" data-rowno="9" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011001$01011001_10_1" data-rowno="10" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011002$01011002_10_2" data-rowno="10" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011005$01011005_10_3" data-rowno="10" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011006$01011006_10_4" data-rowno="10" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011007$01011007_10_5" data-rowno="10" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011008$01011008_10_6" data-rowno="10" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011009$01011009_10_7" data-rowno="10" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011010$01011010_10_8" data-rowno="10" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011011$01011011_10_9" data-rowno="10" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011012$01011012_10_10" data-rowno="10" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011013$01011013_10_11" data-rowno="10" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011014$01011014_10_12" data-rowno="10" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011015$01011015_10_13" data-rowno="10" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011016$01011016_10_14" data-rowno="10" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011017$01011017_10_15" data-rowno="10" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011018$01011018_10_16" data-rowno="10" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011019$01011019_10_17" data-rowno="10" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011020$01011020_10_18" data-rowno="10" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011021$01011021_10_19" data-rowno="10" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011024$01011024_10_20" data-rowno="10" data-colno="20"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011025$01011025_10_21" data-rowno="10" data-colno="21"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011026$01011026_10_22" data-rowno="10" data-colno="22"></span>
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011101$01011101_11_1" data-rowno="11" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011102$01011102_11_2" data-rowno="11" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011105$01011105_11_3" data-rowno="11" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011106$01011106_11_4" data-rowno="11" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011107$01011107_11_5" data-rowno="11" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011108$01011108_11_6" data-rowno="11" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011109$01011109_11_7" data-rowno="11" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011110$01011110_11_8" data-rowno="11" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011111$01011111_11_9" data-rowno="11" data-colno="9"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011112$01011112_11_10" data-rowno="11" data-colno="10"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011113$01011113_11_11" data-rowno="11" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011114$01011114_11_12" data-rowno="11" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011115$01011115_11_13" data-rowno="11" data-colno="13"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011116$01011116_11_14" data-rowno="11" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011117$01011117_11_15" data-rowno="11" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011118$01011118_11_16" data-rowno="11" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011119$01011119_11_17" data-rowno="11" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011120$01011120_11_18" data-rowno="11" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011121$01011121_11_19" data-rowno="11" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        <span></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011124$01011124_11_20" data-rowno="11" data-colno="20"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011125$01011125_11_21" data-rowno="11" data-colno="21"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011126$01011126_11_22" data-rowno="11" data-colno="22"></span>
                        
                        
                    </li>
                    
                    <li class="row-item clearfix">
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011201$01011201_12_1" data-rowno="12" data-colno="1"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011202$01011202_12_2" data-rowno="12" data-colno="2"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011203$01011203_12_3" data-rowno="12" data-colno="3"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011204$01011204_12_4" data-rowno="12" data-colno="4"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011205$01011205_12_5" data-rowno="12" data-colno="5"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011206$01011206_12_6" data-rowno="12" data-colno="6"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011207$01011207_12_7" data-rowno="12" data-colno="7"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011208$01011208_12_8" data-rowno="12" data-colno="8"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        
                        <span class="seat seat-sold" data-seatno="01011209$01011209_12_9" data-rowno="12" data-colno="9"></span>
                        
                        
                        
                        
                        

                        
                        
                        
                        
                        
                        <span class="seat seat-sold" data-seatno="01011210$01011210_12_10" data-rowno="12" data-colno="10"></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011211$01011211_12_11" data-rowno="12" data-colno="11"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011212$01011212_12_12" data-rowno="12" data-colno="12"></span>
                        
                        
                        
                        

                        
                        
                        
                        
                        
                        <span class="seat seat-sold" data-seatno="01011213$01011213_12_13" data-rowno="12" data-colno="13"></span>
                        
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011214$01011214_12_14" data-rowno="12" data-colno="14"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011215$01011215_12_15" data-rowno="12" data-colno="15"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011216$01011216_12_16" data-rowno="12" data-colno="16"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011217$01011217_12_17" data-rowno="12" data-colno="17"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011218$01011218_12_18" data-rowno="12" data-colno="18"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011219$01011219_12_19" data-rowno="12" data-colno="19"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011220$01011220_12_20" data-rowno="12" data-colno="20"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011221$01011221_12_21" data-rowno="12" data-colno="21"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011222$01011222_12_22" data-rowno="12" data-colno="22"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011223$01011223_12_23" data-rowno="12" data-colno="23"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011224$01011224_12_24" data-rowno="12" data-colno="24"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011225$01011225_12_25" data-rowno="12" data-colno="25"></span>
                        
                        
                        
                        

                        
                        
                        <span class="seat " data-seatno="01011226$01011226_12_26" data-rowno="12" data-colno="26"></span>
                        
                        
                    </li>
                    
                </ul>
            </div>
        </div>
    </div>

    <ul class="icon-list font14 clearfix">
        <li>可选座位</li>
        <li>已选座位</li>
        <li>已售座位</li>
        <li>情侣座</li>
    </ul>
    <div class="tips">
        <h3 class="font12">使用说明:</h3>
        <p>1、每笔订单最多可选购4张电影票，情侣座不单卖；</p>
        <p>2、选座时，请尽量选择相邻座位，不要留下单个座位；</p>
        <p>3、点击"完成选座"后，请在15分钟内完成支付，超时系统将释放你选定的座位；</p>
        <p>4、选座购票为特殊商品，出票成功后，如无无法使用问题，不得退换；</p>
        <p>5、付款后若没有出票成功，我们将自动为您退款。出票成功后，请牢记取票密码，若没有收到取票短信，请到订单中心查询，或拨打客服电话4006-099-866；</p>
    </div>
</div>

<div id="pagination"></div>

</div>
    </div>
    <div class="content-right fr">
        <div id="pageletSchedule">




















<div class="widget-buy-seat-info">
    <div class="area movie clearfix">
        <div class="img fl">
            <img src="https://gss0.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/aa18972bd40735fa9fac244094510fb30e2408ee.jpg">
        </div>
        <div class="intro fr">
            <p class="name font16">二十二</p>
            <p class="info font-shadow">版本： 国语 2D</p>
            <p class="info font-shadow">片长： 99分钟</p>
        </div>
    </div>
    <div class="area cinema font14">
        <p><em class="font-shadow">影院：</em>二十二</p>
        <p><em class="font-shadow">影厅：</em>1号厅</p>
        
        <input type="hidden" id="theaterNameInput" value="1号厅">
        
        <p><em class="font-shadow">场次：</em>8月19日 周六 12:30</p>
    </div>
    <input type="hidden" value="5800" id="moviePrice">
    <div class="area seat">
        <p class="font-shadow font14">座位：</p>
        <ul id="selectedInfo" class="seat-list clearfix">
            <li class="empty hide">未选择座位</li>
        <li id="4_13"><p>4排13座</p></li></ul>
    </div>

    <div class="area price">
        <p class="num font14 font-shadow">票数：<span class="nuomi-red" id="totalNum">1张</span></p>
        <p class="font14 font-shadow" id="totalPrice">总价：<span class="num nuomi-red">58元</span></p>
    </div>

    <!--<div class="area tel">
        <p class="font-shadow">接收取票码的手机号</p>
        <input class="input font14" type="text" value="">
    </div>-->

    <a id="confirmSubmit" href="javascript:;" class="area submit-btn">确认提交</a>
</div></div>
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