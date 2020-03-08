<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>숙소 | 상세페이지</title>

    <!-- Calendar -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/USERJS/calendar.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/calendar1.css">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e68b5cc3ca.js" crossorigin="anonymous"></script>

    <style>
    	.star_avg span {
    		padding-left: 5px;
    	}
    	.dhx_calendar.dhx_widget.dhx_widget--bordered { margin: 0 auto; }
    	#google_maps {
    		display: none;
    	}
        .right .info {
            padding: 0
        }
        .right .info .badge {
            display: block;
            top: 0
        }
        .right .info .badge span {
            display: inline-block;
            float: left;
            height: 18px;
            padding: 0 3px;
            font-size: 14px;
            color: #fff;
            line-height: 18px
        }
        /*.right .info strong{display:block;margin-top:9px;font-size:28px}*/
        .right .info h2 {
            display: inline;
            margin: 9px 0 0 0;
            font-size: 28px
        }
        .right .info .score_cnt {
            position: relative;
            clear: both;
            margin: 9px 0 6px 0;
            font-size: 18px
        }
        .right .info .score_cnt span {
            display: inline-block;
            position: relative;
            top: -3px;
            height: 18px;
            margin-right: 7px;
            padding: 0 4px;
            border-radius: 4px;
            background: rgb(255, 167, 38);
            font-size: 14px;
            line-height: 17px;
            color: #fff
        }
        .right .info .score_cnt b {
            font-weight: normal;
            color: rgba(0, 0, 0, 0.38)
        }
        .right .info .score_cnt .call {
            display: none
        }
        .right .info .address {
            margin: 6px 0 8px 0;
            font-size: 18px
        }
        .right .info .benifit_wrap {
            margin-right: 0
        }
        .right .info .benifit_wrap span {
            font-size: 16px
        }
        .event_link {
            margin-top: 16px;
            padding: 0;
            background: none
        }
        .event_link section {
            display: block;
            position: relative;
            padding: 12px 44px 12px 12px;
            border-radius: 4px
        }
        .event_link section:after {
            display: inline-block;
            content: "";
            position: absolute;
            top: 50%;
            right: 16px;
            width: 12px;
            height: 24px;
            margin-top: -12px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_arr_gt.png') right 50% no-repeat;
            background-size: 12px auto
        }
        .event_link section ul li {
            overflow: hidden;
            padding-left: 16px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_bul_2.png') 0 50% no-repeat;
            background-size: 12px auto;
            font-size: 16px;
            line-height: 26px;
            color: #fff;
            white-space: nowrap;
            text-overflow: ellipsis
        }
        .event_link .bg_pink:after {
            display: inline-block;
            content: "";
            position: absolute;
            top: 50%;
            right: 16px;
            width: 12px;
            height: 24px;
            margin-top: -12px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_arr_gt.png') right 50% no-repeat;
            background-size: 12px auto
        }
        .event_link .bg_pink.on:after {
            display: inline-block;
            content: "";
            position: absolute;
            top: 50%;
            right: 16px;
            width: 12px;
            height: 24px;
            margin-top: -12px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_arr_gt.png') right 50% no-repeat;
            background-size: 12px auto
        }
        .event_link section ul li {
            overflow: hidden;
            padding-left: 16px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_bul_2.png') 0 50% no-repeat;
            background-size: 12px auto;
            font-size: 15px;
            line-height: 24px;
            color: #fff;
            white-space: nowrap;
            text-overflow: ellipsis
        }
        .bg_pink.on {
            border-radius: 4px
        }
        .event_link div {
            display: none !important
        }
        .comment {
        	overflow: hidden;
        }
        .right .comment {
            display: block;
            position: relative;
            margin-top: 16px;
            padding: 26px 24px;
            background: rgb(250, 250, 250)
        }
        .right .comment strong {
            display: block;
            margin-bottom: 15px;
            font-size: 16px;
            color: rgba(0, 0, 0, 0.87)
        }
        .right .comment button {
            position: absolute;
            top: 24px;
            right: 24px;
            background: none;
            border: none;
            font-size: 16px;
            color: rgb(0, 121, 107)
        }
        .right .comment div {
            display: block;
            overflow: hidden;
            height: auto;
            font-size: 16px;
            line-height: 26px;
            color: rgba(0, 0, 0, 0.56)
        }
        .right .comment .clamp {
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            height: 52px;
            text-overflow: ellipsis
        }
        .tab {
            width: 962px;
            margin: 0 auto;
            padding: 0 16px;
            margin-top: 38px
        }
        .tab button {
            float: none;
            width: auto;
            height: 72px;
            margin-right: 24px;
            padding: 0;
            border: none;
            border-bottom: 2px solid #fff;
            background: none;
            font-size: 18px;
            color: rgba(0, 0, 0, 0.38)
        }
        .tab button:nth-child(2) {
            width: auto
        }
        .tab .on {
            border-bottom: 3px solid rgb(242, 17, 76);
            font-weight: bold;
            color: rgb(230, 28, 81)
        }
        .room_info {
            width: 962px;
            margin: 0 auto;
        }
        .room_info .gallery_m .index {
            display: block;
            background: none;
            text-align: center
        }
        .room_info .gallery_m .index p {
            display: inline-block;
            height: 40px;
            padding: 0 25px;
            font-size: 15px;
            line-height: 40px
        }
        .room_info .room {
            overflow: hidden;
            position: relative;
            margin: 0 0 24px 0;
            padding: 24px 24px 24px 424px;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 4px;
            background: #fff;
            box-sizing: border-box
        }
        .room_info .room.on {
            height: 826px
        }
        .room_info .room.on .cal_bg,
        .room_info .room.on .pic_wrap {
            display: block;
            opacity: 0;
            transition: 0.4s
        }
        .room_info .room.on .cal_bg.visible,
        .room_info .room.on .pic_wrap.visible {
            opacity: 1
        }
        .room_info {
            background: #fff
        }
        .room_info .pic_wrap {
            display: none;
            position: absolute;
            bottom: 79px;
            left: 111px;
            margin: 0 !important
        }
        .room_info .gallery_m,
        .room_info .pic_wrap {
            width: 738px;
            height: 417px
        }
        .room_info .gallery_m {
            display: block
        }
        .room_info .gallery_m .owl-stage-outer {
            height: 417px
        }
        .room_info .btn_date {
            display: inline-block;
            position: relative;
            width: 248px;
            height: 40px;
            margin: 32px 0;
            padding: 0 0 0 38px;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 4px;
            background: rgba(250, 250, 250, 0.7) url('//image.goodchoice.kr/images/web_v3/ico_cal_2.png') 3px 50% no-repeat;
            background-size: 32px auto;
            font-size: 18px;
            line-height: 40px;
            color: rgba(0, 0, 0, 0.87)
        }
        .room_info .btn_date strong {
            display: none
        }
        .room_info .btn_date:after {
            display: inline-block;
            content: "";
            position: absolute;
            top: 8px;
            right: 8px;
            width: 24px;
            height: 24px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_arr_down.png') 0 0 no-repeat;
            background-size: 24px auto
        }
        .room_info .room {
            overflow: hidden;
            position: relative;
            margin: 0 0 24px 0;
            background: #fff
        }
        .room_info .room .cal_bg {
            display: none;
            position: absolute;
            bottom: 23px;
            left: 23px;
            width: 914px;
            height: 528px;
            background: #f9f9f9
        }
        .room_info .room .cal_bg button {
            display: inline-block;
            position: absolute;
            top: 0;
            right: 0;
            width: 48px;
            height: 48px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_close.png') 50% 50% no-repeat;
            border: none;
            background-size: 24px auto;
            text-indent: -9999px
        }
        .room_info .pic_view {
            display: inline-block;
            position: absolute;
            top: 23px;
            left: 23px;
            width: 376px;
            height: 226px;
            cursor: pointer
        }
        .room_info .pic_view img {
            width: 376px;
            height: 226px
        }
        .room_info .pic_view.pic_empty:after {
            display: none;
        }
        .room_info .room .title {
            display: block;
            height: 37px;
            padding: 0;
            font-size: 20px;
            font-weight: bold;
            line-height: 1
        }
        .room_info .room .info {
            overflow: hidden;
            margin: 0;
            min-height: 188px
        }
        .room_info .info .half {
            float: left;
            width: 233px
        }
        .room_info .info .half:last-child {
            float: left;
            width: 233px;
            margin-left: 46px
        }
        .room_info .info .half:after {
            display: inline-block;
            content: "";
            position: absolute;
            top: 63px;
            right: 280px;
            width: 1px;
            height: 187px;
            background: rgba(0, 0, 0, 0.08)
        }
        .room_info .info .half .price {
            padding: 0;
            border: none;
            border-radius: 0;
            border-bottom: none;
            box-sizing: border-box
        }
        .room_info .info .half .price strong {
            display: block;
            height: 20px;
            font-size: 18px;
            font-weight: bold;
            line-height: 1.4
        }
        .room_info .info .half .price strong span {
            display: inline-block;
            position: relative;
            top: 2px;
            margin-left: 0;
            padding: 1px 3px;
            border: 1px solid rgb(255, 43, 92);
            font-size: 13px;
            line-height: normal;
            color: rgb(255, 43, 92);
            vertical-align: top;
            letter-spacing: -1px
        }
        .room_info .info .half .price div {
            height: 64px;
            padding: 0 0 0 0;
            border-bottom: 1px solid rgba(0, 0, 0, 0.08);
            font-size: 20px;
            color: rgb(230, 28, 81);
            text-align: right
        }
        .room_info .info .price div .through {
            margin-bottom: 3px;
            height: 29px;
            padding-top: 13px;
            text-decoration: line-through;
            font-size: 16px;
            font-weight: normal;
            color: rgba(0, 0, 0, 0.56)
        }
        .room_info .info .price div .through_none {
            margin-bottom: 3px;
            height: 29px;
            padding-top: 13px;
            font-size: 16px;
            color: rgba(0, 0, 0, 0.56)
        }
        .room_info .info .price div p span {
            display: inline-block;
            position: relative;
            top: -2px;
            margin-right: 4px;
            padding: 2px 2px 1px 2px;
            background: rgb(255, 43, 92);
            font-size: 14px;
            line-height: normal;
            color: #fff
        }
        .room_info .info .half .price ul {
            height: 64px;
            padding: 11px 0 0 0
        }
        .room_info .info .half .price ul li {
            position: relative;
            margin-bottom: 7px;
            font-size: 16px;
            text-align: right
        }
        .room_info .info .half .price ul li span {
            position: absolute;
            top: 0;
            left: 0;
            color: rgba(0, 0, 0, 0.56)
        }
        .room_info .info button {
            display: block;
            width: 100%;
            height: 40px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            font-weight: normal;
            color: #fff;
            text-align: center
        }
        .room_info .info button:hover {
        	background-color: #bd9266;
            border: 1px solid #bd9266;
        }
        .room_info .info .none ul,
        .room_info .info .none div .through {
            visibility: hidden
        }
        .room_info .info .none div p,
        .room_info .info .ended p {
            color: rgba(0, 0, 0, 0.87);
            font-weight: bold
        }
        .room_info .info .fast .price {
            position: relative;
            padding: 0;
            border: none;
            border-radius: 0;
            border-bottom: none;
            box-sizing: border-box
        }
        .room_info .info .fast .price strong {
            display: block;
            border-bottom: 1px solid rgba(0, 0, 0, 0.08);
            height: 83px;
            font-size: 18px;
            line-height: 1
        }
        .room_info .info .fast .price div {
            position: absolute;
            top: 10px;
            right: 0;
            font-size: 18px;
            text-align: right
        }
        .room_info .info .fast .price div p b {
            font-size: 20px;
            color: rgb(255, 43, 92)
        }
        .room_info .info .fast .through {
            margin-bottom: 6px !important;
            padding-top: 14px !important
        }
        .room_info .info .fast ul {
            overflow: hidden;
            position: relative;
            height: 65px
        }
        .room_info .info .fast ul:after {
            display: inline-block;
            content: "";
            position: absolute;
            top: 12px;
            left: 50%;
            width: 1px;
            height: 16px;
            margin-top: 0;
            background: rgba(0, 0, 0, 0.08)
        }
        .room_info .info .fast ul li {
            position: relative;
            float: left;
            width: 50%;
            padding: 11px 24px 13px 24px;
            font-size: 16px;
            text-align: right
        }
        .room_info .info .fast ul li:last-child {
            padding-right: 0
        }
        .room_info .info .fast ul li:last-child span {
            left: 24px
        }
        .room_info .info .fast ul li span {
            display: inline-block;
            position: absolute;
            top: 11px;
            left: 0;
            padding-right: 0;
            color: rgba(0, 0, 0, 0.56)
        }
        .room_info .info .room_info_null .price {
            position: relative;
            padding: 0;
            border: none;
            border-radius: 0;
            border-bottom: none;
            box-sizing: border-box
        }
        .room_info .info .room_info_null .price strong {
            display: block;
            border-bottom: 1px solid rgba(0, 0, 0, 0.08);
            height: 147px;
            font-size: 18px;
            line-height: 1
        }
        .room_info .info .room_info_null .price div {
            position: absolute;
            top: 76px;
            right: 0;
            font-size: 18px;
            text-align: right
        }
        .room_info .info .room_info_null .price div p b {
            font-size: 20px;
            color: rgb(255, 43, 92)
        }
        .room_info .info .room_info_null .through {
            margin-bottom: 6px !important;
            padding-top: 14px !important
        }
        .room_info .info .room_info_null ul {
            overflow: hidden;
            position: relative;
            height: 65px
        }
        .room_info .info .room_info_null ul:after {
            display: inline-block;
            content: "";
            position: absolute;
            top: 12px;
            left: 50%;
            width: 1px;
            height: 16px;
            margin-top: 0;
            background: rgba(0, 0, 0, 0.08)
        }
        .room_info .info .room_info_null ul li {
            position: relative;
            float: left;
            width: 50%;
            padding: 11px 24px 13px 24px;
            font-size: 16px;
            text-align: right
        }
        .room_info .info .room_info_null ul li:last-child {
            padding-right: 0
        }
        .room_info .info .room_info_null ul li:last-child span {
            left: 24px
        }
        .room_info .info .room_info_null ul li span {
            display: inline-block;
            position: absolute;
            top: 11px;
            left: 0;
            padding-right: 0;
            color: rgba(0, 0, 0, 0.56)
        }
        .room_info .info .hotel .price {
            position: relative;
            padding: 0;
            border: none;
            border-radius: 0;
            border-bottom: none;
            box-sizing: border-box
        }
        .room_info .info .hotel .price strong {
            display: block;
            padding-top: 41px;
            border-bottom: 1px solid rgba(0, 0, 0, 0.08);
            height: 76px;
            font-size: 16px;
            line-height: 1
        }
        .room_info .info .hotel .price div {
            position: absolute;
            top: 10px;
            right: 0;
            font-size: 18px;
            text-align: right
        }
        .room_info .info .hotel .price div p b {
            font-size: 20px
        }
        .room_info .info .hotel .price button {
            height: 48px;
            margin: 12px 0;
            font-size: 16px;
            line-height: 48px
        }
        .room_info .info .hotel .through {
            margin-bottom: 6px !important;
            padding-top: 14px !important
        }
        .room .owl-nav div {
            width: 40px !important;
            height: 62px !important
        }
        .room .owl-nav .disabled {
            opacity: 0.3
        }
        .room .owl-prev {
            left: 0 !important;
            border-radius: 0 4px 4px 0;
            background: #FFF url('//image.goodchoice.kr/images/web_v3/ico_arr_lt_4.png') 50% 50% no-repeat !important;
            background-size: 20px auto !important
        }
        .room .owl-next {
            right: 0 !important;
            border-radius: 4px 0 0 4px;
            background: #FFF url('//image.goodchoice.kr/images/web_v3/ico_arr_gt_4.png') 50% 50% no-repeat !important;
            background-size: 20px auto !important
        }
        .detail_info {
            width: 962px;
            margin: 0 auto;
            border-bottom: 1px solid rgba(0, 0, 0, 0.08)
        }
        .detail_info button {
            display: block;
            position: relative;
            height: 80px;
            margin: 0;
            padding: 0 16px;
            border-top: 1px solid rgba(0, 0, 0, 0.08);
            font-size: 18px;
            line-height: 80px
        }
        .detail_info button:after {
            display: inline-block;
            content: "";
            position: absolute;
            top: 50%;
            right: 16px;
            width: 12px;
            height: 8px;
            margin-top: -4px;
            background: #fff url('//image.goodchoice.kr/images/web_v3/ico_arr_3.png') 0 0 no-repeat;
            background-size: 12px auto
        }
        .detail_info .on {
            border-bottom: none
        }
        .detail_info .on:after {
            background: #fff url('//image.goodchoice.kr/images/web_v3/ico_arr_3.png') 0 -8px no-repeat;
            background-size: 12px auto
        }
        .detail_info section {
            overflow: hidden;
            padding: 0 57px;
            margin: 0 0 23px 0;
            border-radius: 5px;
            background: rgb(250, 250, 250)
        }
        .detail_info .boss_intro {
            display: none
        }
        .detail_info .default_info {
            padding: 12px 57px 48px 57px
        }
        .detail_info .default_info strong {
            display: block;
            margin: 35px 0 10px 0;
            font-size: 16px;
            color: rgba(0, 0, 0, 0.56)
        }
        .detail_info .default_info p {
            font-size: 15px;
            line-height: 24px;
            color: rgba(0, 0, 0, 0.56)
        }
        .detail_info .default_info .map {
            width: 100%;
            height: 160px;
            margin-top: 30px;
            background: #e8e8e8
        }
        .dot_txt {
            font-size: 16px;
            line-height: 26px;
            color: rgba(0, 0, 0, 0.56)
        }
        .dot_txt li {
            margin-bottom: 7px;
            padding-left: 14px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_bul_3.png') 0 2px no-repeat;
            background-size: 12px auto
        }
        .col_pink {
            color: rgb(242, 17, 76)
        }
        .right .info .benefit_wrap span {
            font-size: 16px
        }
        .theme.ie_fix img {
            height: 250px
        }
        .room_info .info .hotel .price button{height:56px;padding:0;background:#fff url('//image.goodchoice.kr/images/web_v3/ico_arr_gt_2.png') 100% 50% no-repeat;background-size:12px auto;font-size:16px;color:rgba(0,0,0,0.87);text-align:left}
        .room_info .info .hotel .price button{height:48px;margin:12px 0;font-size:16px;line-height:48px}
	    .room_info .info .hotel .through{margin-bottom:6px !important;padding-top:14px !important}
        .gra_left_right_red{
            margin-top: 50px;
            background: #dfa974;
        }
        .bd-title>ul>li {
            list-style: none;
            font-size: 1.2em;
        }
        .bd-title > ul > li {
            list-style: none;
            font-size: 1.2em;
            float: left;
            margin: 0px 20px;
        }
        .bd-title > ul > li:nth-child(1), .bd-title > ul > li:nth-child(3), .bd-title > ul > li:nth-child(5), .modal_layer .icon_close {
            cursor: pointer;
        }
        .comment-option i {
            color: rgb(255,167,38);
        }
        .comment-option h3, .comment-option h5, .comment-option .star_avg {
            text-align: center;
        }
        .room_info_more {
            background-color: rgb(245,245,245);
            padding: 20px;
        }
        .room_info_more ul {
            margin: 10px 0px 20px 30px;
        }
        .room_info_more {
            display: none;
        }
        .comment-option {
            display: none;
        }
        .modal_layer {
            display: none;
            position:fixed;
            top:0;
            left:0;
            width:100%;
            height:100%;
            background:rgba(0, 0, 0, 0.5);
            z-index: 10;
        }
        .modal_inner {
            width:600px;
            height:650px;
            margin: 3.5% auto 0px auto;
            background: #eeeeee;
            z-index: 10;
        }   
        .modal_top h3 {
            position: relative;
            bottom: 30px;
            text-align: center;
        }
        .modal_top div {
            width: 98%;
            font-size: 50px;
            text-align: right;
        }
        .modal_description {
            padding: 30px;
        }
        .modal_button div button {
            width: 20%;
            height: 35px;
            border: none;
        }
        .modal_prev button {
            margin-left: 60%;
            background-color: #fff;
        }
        .modal_prev button:hover {
            background-color: #f7f7f7;
        }
        .modal_next button {
            margin-left: 20%;
            color: white;
            background-color: #dfa974;
        }
        .modal_next button:hover {
            background-color: #bd9266;
        }
        .bd-title > ul > li:nth-child(3), .bd-title > ul > li:nth-child(5) {
            color: #aaa;
        }
        .inn_img {
        	width: 100%;
    		height: 250px;
        }
        @media (max-width: 1200px) {
        }
        @media (max-width: 991px) {
            .inn_img {width: 100%}
            .info-section { position: relative; top: 250px; }
            .inn-info { padding-top: 110px; }
        }
        .comment_mobile {
        	display: none;
        }
        .paging { text-align: center; }
        .paging p {
			text-align: center;
		}
		.paging > p > span { padding-left: 5px; }
		.paging_button {
			width: 62px;
			margin: 0 auto;
		}
		.paging_button button {
			border: none;
			background-color: white;
		}
		.recommend:hover { cursor: pointer; }
		
		.comment {
			display: block;
		    position: relative;
		    margin-top: 16px;
		    padding: 26px 24px;
		    background: #ececec;
		}
		.comment strong {
			display: block;
		    margin-bottom: 15px;
		    font-size: 16px;
		    color: rgba(0,0,0,0.87);
		}
		.comment button {
			position: absolute;
		    top: 24px;
		    right: 24px;
		    background: none;
		    border: none;
		    font-size: 16px;
		    color: rgb(0,121,107);
		}
		.comment .clamp {
		    display: -webkit-box;
		    -webkit-line-clamp: 2;
		    -webkit-box-orient: vertical;
		    text-overflow: ellipsis;
		    overflow: hidden;
		}
		
    </style>

    <!-- Css Styles -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/elegant-icons.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/nice-select.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slicknav.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/style.css">
</head>

<body>
    <!-- Header Section Begin -->
	<jsp:include page="../userHeader.jsp"/>
	
	<c:if test="${fn:length(dto) == 0}">
		<jsp:include page="../notFound.jsp"/>
	</c:if>
	<c:if test="${fn:length(dto) >= 1}">
	<c:set var="total" value="0"/>
    <c:forEach var="review" items="${review }">
    	<c:set var="total" value="${total + review.review_star }"/>
    </c:forEach>

    <!-- Blog Details Hero Section Begin -->
    <section style="padding-top: 50px; height: 350px;" class="blog-details-hero set-bg">
        <div class="container">
            <div class="row" style=" width: 80%; margin: 0 auto;">
                <div class="col-lg-5 inn_img">
                    <img src="${dto[0].inn_pic }">
                </div>
                <div class="col-lg-7 inn-info">
                    <h3 style="white-space: nowrap;"><span style="color: white; font-weight: bold; padding: 2px 5px; margin-right: 5px; font-size: 0.8em; background-color: #dfa974; border: 1px solid #dfa974; border-radius: 5px;">
					<c:if test="${dto[0].inn_sep == 1 }">호텔</c:if>
					<c:if test="${dto[0].inn_sep == 2 }">펜션</c:if>
					<c:if test="${dto[0].inn_sep == 3 }">리조트</c:if>
					</span>${dto[0].inn_name }</h3>
                    <p style="margin-top: 7px; color: rgb(255,167,38)"><c:if test="${total != 0 }"><span style="color: white; font-weight: 300; padding: 2px 5px; margin-right: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;"><fmt:formatNumber value="${total / fn:length(review) }" pattern=".0"/></span></c:if><span class="star_comment"></span></p>
                    <p style="background-color: #ececec; padding: 5px 10px;">${dto[0].inn_loc }</p>
                    <div class="comment" style="height: 120px;">
	                	<strong>사장님 한마디</strong>
						<button onclick="more()" class="more">더보기</button>
						<div class="clamp">${dto[0].inn_ment }</div>
					</div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->
    <!-- Blog Details Section Begin -->
    <section class="blog-details-section">
        <div class="container">
            <div class="row">
                <div class="info-section col-lg-10 offset-lg-1">
                    <div class="blog-details-text">
                        <div class="bd-title">
                            <ul>
                                <li>객실 안내/예약</li>
                                <li>|</li>
                                <li>숙소 정보</li>
                                <li>|</li>
                                <li>리뷰</li>
                            </ul>
                        </div>
                        <div class="bd-title" style="padding-top: 20px; clear: both;">
                            <article class="room_info on">
                            	<c:forEach  var="dto" items="${dto }">
	                                <div class="room">
		                                <!-- 282 x 169 -->
		                                <p class="pic_view "><img class="lazy" data-original="${dto.room_pic }" src="${dto.room_pic }" alt="${dto.room_name }" style="display: inline;"></p>
		                                <div class="cal_bg">
		                                    <button type="button">닫기</button>
		                                </div>
		                    
		                                <strong class="title">${dto.room_name }</strong>
		                    
		                                <div class="pic_wrap">
		                            </div>
		                            <div class="info">
		                                <div class="hotel">
		                                    <div class="price">
		                                        <strong>가격</strong>
		                                            <div>
		                                                <p class="through_none" style="text-decoration: line-through;"><c:if test="${dto.room_first_cost != 0 }"><fmt:formatNumber value="${dto.room_first_cost }" pattern="#,###"/></c:if></p>
		                                                <p>
		                                                	<b style="color: rgba(0,0,0,1)">
		                                                		<c:if test="${dto.room_first_cost != 0 }">
					                                            	<c:set var="disRate" value="${(dto.room_first_cost - dto.room_last_cost) / dto.room_first_cost * 100 }" />
					                                            	<c:set var="disRate" value="${disRate+((disRate%1>0.5)?(1-(disRate%1))%1:-(disRate%1))}" />
			   														<fmt:parseNumber var="disRate" type="number" value="${disRate }" />
					                                            	<span style="font-size: 0.7; margin-right: 5px; padding: 0px 3px;">
					                                            		${disRate }%
					                                            	</span>
				                                            	</c:if>
		                                                		<c:if test="${dto.room_last_cost != 0 }">
		                                                		<fmt:formatNumber value="${dto.room_last_cost }" pattern="#,###"/> 원
		                                                		</c:if>
		                                                		<c:if test="${dto.room_last_cost == 0 }">가격 준비 중!
		                                                		</c:if>
	                                                		</b>
                                                		</p>
		                                            </div>
		                                    </div>
		                                    <c:if test="${dto.room_last_cost == 0 || empty sessionScope.loginUid }"><button type="button" style="background-color: #bbb; border-color: #bbb;" disabled="disabled" class="gra_left_right_red"> 전화로 예약해주세요</button></c:if>
		                                    <c:if test="${dto.room_last_cost != 0 && not empty sessionScope.loginUid }"><button type="button" onclick="openModal(${dto.room_uid })" class="gra_left_right_red"> 예약</button></c:if>
		                                </div>
		                            </div>
	                            </div>
                            </c:forEach>
                        </article>
                        </div>
                        <div class="room_info_more">
                            ${dto[0].inn_info }
                        </div>
                        <div id="comment" class="comment-option">
                            <h3>리뷰</h3>
                            <div class="star_avg">
                                <span><fmt:formatNumber value="${total / fn:length(review) }" pattern=".0"/></span>
                            </div>
                            <h5 style="padding-bottom: 50px;">전체 리뷰 ${fn:length(review) }개</h5>
                            <div class="review"></div>
                            <div class="paging">
					        	<p>Page<span class="0">1</span></p>
					        	<div class="paging_button">
							        <button onclick="change(0)">◀</button>
							        <button onclick="change(1)">▶</button>
					        	</div>
					        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->
    <!-- Recommend Blog Section Begin -->
    <c:if test="${fn:length(popular) >= 3 }">
	    <section class="recommend-blog-section spad">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12">
	                    <div class="section-title">
	                        <h2 style="font-weight: bold;">추천 숙소</h2>
	                    </div>
	                </div>
	            </div>
	            <div class="row">
	            	<c:forEach var="i" begin="0" end="2" step="1">
		                <div class="col-sm-4 recommend" onclick="location.href='${pageContext.request.contextPath}/user/inn/view/${popular[i].inn_uid }'">
		                    <div class="blog-item set-bg" data-setbg="${popular[i].inn_pic }">
		                        <div class="bi-text">
		                            <span class="b-tag">
		                            	<c:if test="${popular[i].inn_sep == 1 }">호텔</c:if>
										<c:if test="${popular[i].inn_sep == 2 }">펜션</c:if>
										<c:if test="${popular[i].inn_sep == 3 }">리조트</c:if>
		                            </span>
		                            <h4 style="color: white; font-weight: bold;">${popular[i].inn_name }</h4>
		                            <div class="b-time"><i class="fas fa-map-marker-alt"></i> ${popular[i].inn_loc }</div>
		                        </div>
		                    </div>
		                </div>
					</c:forEach>
	            </div>
	        </div>
	    </section>
   	</c:if>
    <!-- Recommend Blog Section End -->
    </c:if>
    
    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/resources/img/footer-logo.png" alt="">
                                </a>
                            </div>
                            <p>We inspire and reach millions of travelers<br /> across 90 local websites</p>
                            <div class="fa-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-contact">
                            <h6>Contact Us</h6>
                            <ul>
                                <li>(12) 345 67890</li>
                                <li>info.colorlib@gmail.com</li>
                                <li>856 Cordia Extension Apt. 356, Lake, United State</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-newslatter">
                            <h6>New latest</h6>
                            <p>Get the latest updates and offers.</p>
                            <form action="#" class="fn-form">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <ul>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Environmental Policy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-5">
                        <div class="co-text">
                            <p>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                    href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
    <div class="modal_layer select_date">
        <div class="modal_inner">
            <div class="modal_top">
                <div><i class="icon_close"></i></div>
                <h3>객실 예약</h3>
            </div>
            <div class="modal_description">
                <section class="dhx_sample-container">
                    <div class="dhx_sample-container__widget" id="calendar"></div>
                </section>
            </div>
            <div class="modal_button row">
                <div class="modal_prev col-sm-6">
                    <button>prev</button>
                </div>
                <div class="modal_next col-sm-6">
                	<form action="${pageContext.request.contextPath}/user/inn/reserve" method="POST" onsubmit="return chkSubmit()">
			    		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			    		<input type="hidden" name="room_uid" value=""/>
			    		<input type="hidden" name="book_date" value=""/>
			    		<input type="hidden" name="book_date_end" value=""/>
	                    <button type="submit">next</button>
	            	</form>
                </div>
            </div>
        </div>
    </div>
    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->
    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/USERJS/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/main.js"></script>
    <script>
        $(document).ready(function() {
            $(".bd-title > ul > li").eq(0).click(function() {
                $(".room_info").css("display", "block")
                $(".room_info_more").css("display", "none")
                $(".comment-option").css("display", "none")
                $(".bd-title > ul > li").css("color", "#AAAAAA")
                $(".bd-title > ul > li").eq(0).css("color", "#212529")
                $(".bd-title > ul > li").eq(1).css("color", "#212529")
                $(".bd-title > ul > li").eq(3).css("color", "#212529")
            })
            $(".bd-title > ul > li").eq(2).click(function() {
                $(".room_info").css("display", "none")
                $(".room_info_more").css("display", "block")
                $(".comment-option").css("display", "none")
                $(".bd-title > ul > li").css("color", "#AAAAAA")
                $(".bd-title > ul > li").eq(2).css("color", "#212529")
                $(".bd-title > ul > li").eq(1).css("color", "#212529")
                $(".bd-title > ul > li").eq(3).css("color", "#212529")
            })
            $(".bd-title > ul > li").eq(4).click(function() {
                $(".room_info").css("display", "none")
                $(".room_info_more").css("display", "none")
                $(".comment-option").css("display", "block")
                $(".bd-title > ul > li").css("color", "#AAAAAA")
                $(".bd-title > ul > li").eq(4).css("color", "#212529")
                $(".bd-title > ul > li").eq(1).css("color", "#212529")
                $(".bd-title > ul > li").eq(3).css("color", "#212529")
            })

            $(".modal_inner .icon_close").click(function() {
                $(".modal_layer").css("display", "none")
            })
            $.ajax({
    			url: "${pageContext.request.contextPath}/user/inn/ajax/review/" + ${dto[0].inn_uid } + "/0/5",
    			method: "GET",
    			success: function(data) {
    				var row = "";
    				for (i = 0; i < data.length; i++) {
    					row += "<div class='single-comment-item first-comment'>";
    					row += "<div class='sc-author'>";
	                    row += "<img src='" + data[i].member_pic + "' alt=''>";
	                    row += "</div>";
	                    row += "<div class='sc-text'>";
	                    row += "<h6 style='margin-top: 7px; text-align: left;'>" + data[i].review_title + "<span style='color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;'>" + data[i].review_star + "</span></h6>";
						row += "<div style='padding: 10px;''>";
						row += "<p style='font-weight: 600; left; margin-bottom: 10px;'>" + data[i].book_member_name + "</p>";
						row += "<p>" + data[i].review_content + "</p>";
						row += "</div>";
						row += "</div>";
						row += "</div>";
    				}
    				$(".review").html(row);
    				if (row.trim().length == 0) {
    	    			$(".paging").html("리뷰가 없습니다<br>리뷰를 등록해주세요");
    	    			$(".star_avg").html("");
    	    		}
    			}
    		})
        })
        function openModal(room_uid) {
            $(".modal_layer").css("display", "block")
            $("input:hidden[name='room_uid']").val(room_uid)
        }
        
        function change(go) {
    		var curPage = parseInt($(".paging p span").text());
    		var curOption = $(".current").text();
    		
    		if (go == 0 && curPage != 1) {
    			paging((curPage * 5) - 10, 5);
   				$(".paging p span").text(curPage - 1)
    		} else if (go == 1) {
    			paging(curPage * 5, 5);
   				$(".paging p span").text(curPage + 1)
    		}

    		$('html').scrollTop($(".blog-details-hero.set-bg").outerHeight());
    	}
        
        function paging(writePage, page) {
        	$.ajax({
    			url: "${pageContext.request.contextPath}/user/inn/ajax/review/" + ${dto[0].inn_uid } + "/" + writePage + "/" + page,
    			method: "GET",
    			success: function(data) {
    				var row = "";
    				for (i = 0; i < data.length; i++) {
    					row += "<div class='single-comment-item first-comment'>";
    					row += "<div class='sc-author'>";
	                    row += "<img src='" + data[i].member_pic + "' alt=''>";
	                    row += "</div>";
	                    row += "<div class='sc-text'>";
	                    row += "<h6 style='margin-top: 7px; text-align: left;'>" + data[i].review_title + "<span style='color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;'>" + data[i].review_star + "</span></h6>";
						row += "<div style='padding: 10px;''>";
						row += "<p style='font-weight: 600; left; margin-bottom: 10px;'>" + data[i].book_member_name + "</p>";
						row += "<p>" + data[i].review_content + "</p>";
						row += "</div>";
						row += "</div>";
						row += "</div>";
    				}
    				$(".review").html(row);
    				if (row.trim().length == 0) {
    					paging(writePage - 5, 5);
    					$(".paging p span").text(writePage / 5);
    					alert("더 이상 리뷰가 없습니다");
    				}
    			}
    		})
        }
    </script>

    <script>
        const firstDate = new Date();
        const secondDate = new Date(Date.now());
        var calendar = new dhx.Calendar("calendar", {
            css: "dhx_widget--bordered",
            range: true,
            value: [firstDate, secondDate]
        });
        
        calendar.events.on("change",function(firstDate, secondDate, click){
        	var year = secondDate.getFullYear();
        	var month = secondDate.getMonth() + 1;
        	month = month.toString().length < 2 ? month = "0" + month : month;
        	var date = secondDate.getDate();
        	
        	var year2 = firstDate.getFullYear();
        	var month2 = firstDate.getMonth();
        	month2 = month.toString().length < 2 ? month = "0" + month : month;
        	var date2 = firstDate.getDate();
        	
			$("input:hidden[name='book_date']").val(year + "-" + month + "-" + date)
			$("input:hidden[name='book_date_end']").val(year2 + "-" + month2 + "-" + date2)
        });
        calendar.events.on("cancelClick",function(firstDate, secondDate, click){
			$("input:hidden[name='book_date']").val("")
        });
        
        function chkSubmit() {
        	var now = new Date(Date.now());
        	var book_date = $("input:hidden[name='book_date']").val()
        	var book_date_end = $("input:hidden[name='book_date_end']").val()
        	
        	if (book_date.trim().length != 0 && book_date_end.trim().length != 0 && book_date != book_date_end) {
        		var year = book_date.substring(0, 4)
         		var month = book_date.substring(5, 7).replaceAll("0", "")
          		var date = book_date.substring(8, 10)
          		
    			if (year >= d.getFullYear() && ((month == d.getMonth() + 1 && date > d.getDate()) || (month > d.getMonth() + 1))) {
          			return true;
          		} else {
          			alert(now.getFullYear() + "/" + (now.getMonth() + 1) + "/" + now.getDate() + " 이후로 선택해주세요")
          		}
        	}
        	
        	return false;
        }
        
        function more() {
        	if ($(".more").text() === "더보기") {
        		$(".more").text("접기")
            	$(".comment").css("height", "auto")
            	$(".clamp").css("height", "auto")
            	$(".clamp").css("display", "block")
            	$(".clamp").css("overflow", "hidden")
        	} else if ($(".more").text() === "접기") {
        		$(".more").text("더보기")
            	$(".comment").css("height", "120px")
            	$(".clamp").css("display", "-webkit-box")
            	$(".clamp").css("-webkit-line-clamp", "2")
            	$(".clamp").css("-webkit-box-orient", "vertical")
            	$(".clamp").css("text-overflow", "ellipsis")
        	}
        }
        
        $(document).ready(function() {
        	
        	var star = $(".star_avg span").text();
        	var icon = "";        	
        	star = Math.floor(star);
        	
        	for (i = 0; i < Math.floor(star / 2); i++) { icon += "<i class='fas fa-star'></i>"; }
        	if (star % 2 == 1) icon += "<i class='fas fa-star-half-alt'></i>";
        	icon += ("<span>" + $(".star_avg span").text() + "</span>");
        	
        	$(".star_avg").html(icon);
        	
        	star = 5 - $(".star_avg i").length;
        	for (i = 0; i < star; i++) { 
        		$(".star_avg span").before("<i class='far fa-star'></i>"); 
       		}
        	
        	var starCeil = Math.ceil("${total / fn:length(review) }");
        	
        	if (starCeil >= 9) {
	        	$(".star_comment").text("완벽해요")
        	} else if (starCeil >= 7) {
        		$(".star_comment").text("만족해요")
        	} else if (starCeil >= 5) {
        		$(".star_comment").text("그저 그래요")
        	} else if (starCeil >= 3) {
        		$(".star_comment").text("별로에요")
        	} else if (starCeil >= 0) {
        		$(".star_comment").text("끔찍해요")
        	}
        })
    </script>
</body>

</html>