<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sona | Template</title>

    <!-- Calendar -->
	<script type="text/javascript" src="./calendar_trial/codebase/calendar.js?v=6.4.1"></script>
	<link rel="stylesheet" href="./calendar_trial/codebase/calendar.css?v=6.4.1">
	<link rel="stylesheet" href="./calendar_trial/samples/common/index.css?v=6.4.1">
	<link rel="stylesheet" href="./calendar_trial/samples/common/calendar.css?v=6.4.1">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <style>
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
        .comment-option h5 {
            padding-bottom: 10px;
            border-bottom: 1px solid #ebebeb;
            margin-bottom: 10px;
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
        .modal_next button {
            margin-left: 20%;
            color: white;
            background-color: #dfa974;
        }

        .bd-title > ul > li:nth-child(3), .bd-title > ul > li:nth-child(5) {
            color: #aaa;
        }

        @media (min-width: 991px) {
            .inn_img {width: 100%}
        }
        .comment_mobile {
        	display: none;
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

    <!-- Blog Details Hero Section Begin -->
    <section style="padding-top: 50px; height: 350px;" class="blog-details-hero set-bg">
        <div class="container">
            <div class="row" style=" width: 80%; margin: 0 auto;">
                <div class="col-lg-5 inn_img">
                    <img src="http://image.goodchoice.kr/resize_490x348/affiliate/2018/06/12/5b1f453ded22c.jpg">
                </div>
                <div class="col-lg-7"">
                    <h3><span style="color: white; font-weight: bold; padding: 2px 5px; margin-right: 5px; font-size: 0.8em; background-color: #dfa974; border: 1px solid #dfa974; border-radius: 5px;">
					<c:choose>
						<c:when test="${dto[0].inn_sep == 1 } ">호텔</c:when>
						<c:when test="${dto[0].inn_sep == 2 } ">펜션</c:when>
						<c:when test="${dto[0].inn_sep == 3 } ">리조트</c:when>
					</c:choose>
					</span>${dto[0].inn_name }</h3>
                    <p style="margin-top: 7px; color: rgb(255,167,38)"><span style="color: white; font-weight: 300; padding: 2px 5px; margin-right: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;">9.5</span>만족해요</p>
                    <p style="background-color: #ececec; padding: 5px 7px;">${dto[0].inn_loc }</p>
                    <div class="comment" style="background: #ececec; padding: 12px 17px;">
                        <strong>사장님 한마디</strong>
                        <button style="float: right; background: none; border: none; margin-right: 2%;">더보기</button>
                        <div class="clamp" style="font-size: 0.9em; margin-top: 10px;">${dto[0].inn_ment }
                        </div>
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
                <div class="col-lg-10 offset-lg-1">
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
                        <div class="bd-title" style="clear: both;">
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
		                                                <p class="through_none" style="text-decoration: inherit; visibility: hidden;">0</p>
		                                                <p><b style="color: rgba(0,0,0,1)">${dto.room_fee }</b> <!-- 표시금액 --></p>
		                                            </div>
		                                    </div>
		                                    <button type="button" onclick="openModal()" class="gra_left_right_red"> 예약</button>
		                                </div>
		                            </div>
	                            </div>
                            </c:forEach>
                        </article>
                        </div>
                        <div class="room_info_more">
                            ${dto[0].inn_info }
                        </div>
                        <div class="comment-option">
                            <h3>리뷰</h3>
                            <div class="star_avg">
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <span>10</span>
                            </div>
                            <h5>전체 리뷰 3개</h5>
                            <div class="single-comment-item first-comment">
                                <div class="sc-author">
                                    <img src="img/blog/blog-details/avatar/avatar-1.jpg" alt="">
                                </div>
                                <div class="sc-text">
                                    <span>2020-02-10 / 00:00:00</span>
                                    <p style="margin-top: 7px;">리뷰 제목<span style="color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;">9.5</span></p>
                                    <h5>Brandon Kelley</h5>
                                    <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora. incidunt ut labore et
                                        dolore magnam.
                                    </p>
                                </div>
                            </div>
                            <div class="single-comment-item first-comment">
                                <div class="sc-author">
                                    <img src="img/blog/blog-details/avatar/avatar-1.jpg" alt="">
                                </div>
                                <div class="sc-text">
                                    <span>2020-02-10 / 00:00:00</span>
                                    <p style="margin-top: 7px;">리뷰제목<span style="color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;">9.5</span></p>
                                    <h5>Brandon Kelley</h5>
                                    <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora. incidunt ut labore et
                                        dolore magnam.
                                    </p>
                                </div>
                            </div>
                            <div class="single-comment-item first-comment">
                                <div class="sc-author">
                                    <img src="img/blog/blog-details/avatar/avatar-1.jpg" alt="">
                                </div>
                                <div class="sc-text">
                                    <span>2020-02-10 / 00:00:00</span>
                                    <p style="margin-top: 7px;">리뷰 제목<span style="color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;">9.5</span></p>
                                    <h5>Brandon Kelley</h5>
                                    <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora. incidunt ut labore et
                                        dolore magnam.
                                    </p>
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
    <section class="recommend-blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Recommended</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="blog-item set-bg" data-setbg="img/blog/blog-1.jpg">
                        <div class="bi-text">
                            <span class="b-tag">Travel Trip</span>
                            <h4><a href="#">Tremblant In Canada</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 15th April, 2019</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="blog-item set-bg" data-setbg="img/blog/blog-2.jpg">
                        <div class="bi-text">
                            <span class="b-tag">Camping</span>
                            <h4><a href="#">Choosing A Static Caravan</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 15th April, 2019</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="blog-item set-bg" data-setbg="img/blog/blog-3.jpg">
                        <div class="bi-text">
                            <span class="b-tag">Event</span>
                            <h4><a href="#">Copper Canyon</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 21th April, 2019</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Recommend Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="img/footer-logo.png" alt="">
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
                    <button onclick="location.href = './innReserve.html'">next</button>
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
            })
            $(".bd-title > ul > li").eq(2).click(function() {
                $(".room_info").css("display", "none")
                $(".room_info_more").css("display", "block")
                $(".comment-option").css("display", "none")
            })
            $(".bd-title > ul > li").eq(4).click(function() {
                $(".room_info").css("display", "none")
                $(".room_info_more").css("display", "none")
                $(".comment-option").css("display", "block")
            })

            $(".modal_inner .icon_close").click(function() {
                $(".modal_layer").css("display", "none")
            })
        })
        function openModal() {
            $(".modal_layer").css("display", "block");
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
    </script>
</body>

</html>