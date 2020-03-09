<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>액티비티 | 찾기</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/style_rami.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/swiper.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    <style>
    	body {
    		overflow-x: hidden;
    	}
    	.breadcrumb-section2 {
    		background-image: url("https://img-wishbeen.akamaized.net/plan/1438766732219_Sparkling-sea.jpg");
    		background-size: cover;
    		background-position: 50%;
    	}
        
        .breadcrumb-section2 h2, #hotel1, .section-title h2 {
        	text-shadow: 0px 2px 6px grey;
        	padding: 15px 0px;
        	font-weight: bold;
        	color: white;
        }
    	.item_info h5 {
    		line-height: 1.5em;
    	}
        .sep {
		    color: white;
		    font-weight: bold;
		    padding: 2px 5px;
		    margin: 5px;
		    font-size: 0.8em;
		    background-color: #dfa974;
		    border: 1px solid #dfa974;
		    border-radius: 5px;
		}
		.hothot2 { height: 400px; }
		.item_img2 { height: 200px; }
		.hothot2 > .item_img2 > img { 
			width: 100%;
			height: 100%;
		}
		.hothot2:hover { cursor: pointer; }
		.hothot2:nth-child(1) { margin: 0; }
		.swiper2 { height: 600px !important; }
		.sivaHotH { margin-top: 320px; }
		.about-page-text { margin: 0; }
		.spad { padding: 0; }
		#navYamHot1 li:hover { cursor: pointer; }
      html, body {
        position: relative;
        height: 100%;
      }
      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color:#000;
        margin: 0;
        padding: 0;
      }
      .swiper-container {
        width: 100%;
        height: 1200px;
      }
      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
  
        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }
      .swiper-slide h5, .swiper-slide p {
      	text-align: left;
      }
      .swiper-slide.swiper-slide-active {
      	margin: 0 !important;
      }
    </style>
    
    <style>
    	#hotel1 { padding: 10px 0px; color: white; font-weight: bold; }
    	.navYam2 > ul > li { height: 300px; margin-top: 5%; background-color: white; border: 1px solid #ebebeb; }
    	.navYam2 > ul > li:hover { cursor: pointer; }
    	.item_info > h5 { height: 75px; }
    	.item_info > p { height: 45px; }
    	.item_img { height: 133px; }
    	.item_img > img {
	    	width: 100%;
			height: 100%;
		}
		.hothot2 { background-color: white; border: 1px solid #ebebeb; }
		#navYamHot1 ul li { height: 300px; background-color: white; border: 1px solid #ebebeb; }
    	/* Sections
   ========================================================================== */
	/**
	 * Remove the margin in all browsers (opinionated).
	 */
	body {
	  margin: 0;
	}
	
	.nice-select {
		border: 0px;
		width: 100%;
		height: 48px;
		padding-top: 5px;
	}
	/**
	 * Add the correct display in IE 9-.
	 */
	article,
	aside,
	footer,
	header,
	nav,
	section {
	  display: block;
	}
	
	/**
	 * Correct the font size and margin on `h1` elements within `section` and
	 * `article` contexts in Chrome, Firefox, and Safari.
	 */
	h1 {
	  font-size: 2em;
	  margin: 0.67em 0;
	}
	
	/* Grouping content
	   ========================================================================== */
	/**
	 * Add the correct display in IE 9-.
	 * 1. Add the correct display in IE.
	 */
	figcaption,
	figure,
	main {
	  /* 1 */
	  display: block;
	}
	
	/**
	 * Add the correct margin in IE 8.
	 */
	figure {
	  margin: 1em 40px;
	}
	
	/**
	 * 1. Add the correct box sizing in Firefox.
	 * 2. Show the overflow in Edge and IE.
	 */
	hr {
	  box-sizing: content-box;
	  /* 1 */
	  height: 0;
	  /* 1 */
	  overflow: visible;
	  /* 2 */
	}
	
	/**
	 * 1. Correct the inheritance and scaling of font size in all browsers.
	 * 2. Correct the odd `em` font sizing in all browsers.
	 */
	pre {
	  font-family: monospace, monospace;
	  /* 1 */
	  font-size: 1em;
	  /* 2 */
	}
	
	/* Text-level semantics
	   ========================================================================== */
	/**
	 * 1. Remove the gray background on active links in IE 10.
	 * 2. Remove gaps in links underline in iOS 8+ and Safari 8+.
	 */
	a {
	  background-color: transparent;
	  /* 1 */
	  -webkit-text-decoration-skip: objects;
	  /* 2 */
	}
	
	/**
	 * 1. Remove the bottom border in Chrome 57- and Firefox 39-.
	 * 2. Add the correct text decoration in Chrome, Edge, IE, Opera, and Safari.
	 */
	abbr[title] {
	  border-bottom: none;
	  /* 1 */
	  text-decoration: underline;
	  /* 2 */
	  text-decoration: underline dotted;
	  /* 2 */
	}
	
	/**
	 * Prevent the duplicate application of `bolder` by the next rule in Safari 6.
	 */
	b,
	strong {
	  font-weight: inherit;
	}
	
	/**
	 * Add the correct font weight in Chrome, Edge, and Safari.
	 */
	b,
	strong {
	  font-weight: bolder;
	}
	
	/**
	 * 1. Correct the inheritance and scaling of font size in all browsers.
	 * 2. Correct the odd `em` font sizing in all browsers.
	 */
	code,
	kbd,
	samp {
	  font-family: monospace, monospace;
	  /* 1 */
	  font-size: 1em;
	  /* 2 */
	}
	
	/**
	 * Add the correct font style in Android 4.3-.
	 */
	dfn {
	  font-style: italic;
	}
	
	/**
	 * Add the correct background and color in IE 9-.
	 */
	mark {
	  background-color: #ff0;
	  color: #000;
	}
	
	/**
	 * Add the correct font size in all browsers.
	 */
	small {
	  font-size: 80%;
	}
	
	/**
	 * Prevent `sub` and `sup` elements from affecting the line height in
	 * all browsers.
	 */
	sub,
	sup {
	  font-size: 75%;
	  line-height: 0;
	  position: relative;
	  vertical-align: baseline;
	}
	
	sub {
	  bottom: -0.25em;
	}
	
	sup {
	  top: -0.5em;
	}
	
	/* Embedded content
	   ========================================================================== */
	/**
	 * Add the correct display in IE 9-.
	 */
	audio,
	video {
	  display: inline-block;
	}
	
	/**
	 * Add the correct display in iOS 4-7.
	 */
	audio:not([controls]) {
	  display: none;
	  height: 0;
	}
	
	/**
	 * Remove the border on images inside links in IE 10-.
	 */
	img {
	  border-style: none;
	}
	
	/**
	 * Hide the overflow in IE.
	 */
	svg:not(:root) {
	  overflow: hidden;
	}
	
	/* Forms
	   ========================================================================== */
	/**
	 * 1. Change the font styles in all browsers (opinionated).
	 * 2. Remove the margin in Firefox and Safari.
	 */
	button,
	input,
	optgroup,
	select,
	textarea {
	  font-family: sans-serif;
	  /* 1 */
	  font-size: 100%;
	  /* 1 */
	  line-height: 1.15;
	  /* 1 */
	  margin: 0;
	  /* 2 */
	}
	
	/**
	 * Show the overflow in IE.
	 * 1. Show the overflow in Edge.
	 */
	button,
	input {
	  /* 1 */
	  overflow: visible;
	}
	
	/**
	 * Remove the inheritance of text transform in Edge, Firefox, and IE.
	 * 1. Remove the inheritance of text transform in Firefox.
	 */
	button,
	select {
	  /* 1 */
	  text-transform: none;
	}
	
	/**
	 * 1. Prevent a WebKit bug where (2) destroys native `audio` and `video`
	 *    controls in Android 4.
	 * 2. Correct the inability to style clickable types in iOS and Safari.
	 */
	button,
	html [type="button"],
	[type="reset"],
	[type="submit"] {
	  -webkit-appearance: button;
	  /* 2 */
	}
	
	/**
	 * Remove the inner border and padding in Firefox.
	 */
	button::-moz-focus-inner,
	[type="button"]::-moz-focus-inner,
	[type="reset"]::-moz-focus-inner,
	[type="submit"]::-moz-focus-inner {
	  border-style: none;
	  padding: 0;
	}
	
	/**
	 * Restore the focus styles unset by the previous rule.
	 */
	button:-moz-focusring,
	[type="button"]:-moz-focusring,
	[type="reset"]:-moz-focusring,
	[type="submit"]:-moz-focusring {
	  outline: 1px dotted ButtonText;
	}
	
	/**
	 * Correct the padding in Firefox.
	 */
	fieldset {
	  padding: 0.35em 0.75em 0.625em;
	}
	
	/**
	 * 1. Correct the text wrapping in Edge and IE.
	 * 2. Correct the color inheritance from `fieldset` elements in IE.
	 * 3. Remove the padding so developers are not caught out when they zero out
	 *    `fieldset` elements in all browsers.
	 */
	legend {
	  box-sizing: border-box;
	  /* 1 */
	  color: inherit;
	  /* 2 */
	  display: table;
	  /* 1 */
	  max-width: 100%;
	  /* 1 */
	  padding: 0;
	  /* 3 */
	  white-space: normal;
	  /* 1 */
	}
	
	/**
	 * 1. Add the correct display in IE 9-.
	 * 2. Add the correct vertical alignment in Chrome, Firefox, and Opera.
	 */
	progress {
	  display: inline-block;
	  /* 1 */
	  vertical-align: baseline;
	  /* 2 */
	}
	
	/**
	 * Remove the default vertical scrollbar in IE.
	 */
	textarea {
	  overflow: auto;
	}
	
	/**
	 * 1. Add the correct box sizing in IE 10-.
	 * 2. Remove the padding in IE 10-.
	 */
	[type="checkbox"],
	[type="radio"] {
	  box-sizing: border-box;
	  /* 1 */
	  padding: 0;
	  /* 2 */
	}
	
	/**
	 * Correct the cursor style of increment and decrement buttons in Chrome.
	 */
	[type="number"]::-webkit-inner-spin-button,
	[type="number"]::-webkit-outer-spin-button {
	  height: auto;
	}
	
	/**
	 * 1. Correct the odd appearance in Chrome and Safari.
	 * 2. Correct the outline style in Safari.
	 */
	[type="search"] {
	  -webkit-appearance: textfield;
	  /* 1 */
	  outline-offset: -2px;
	  /* 2 */
	}
	
	/**
	 * Remove the inner padding and cancel buttons in Chrome and Safari on macOS.
	 */
	[type="search"]::-webkit-search-cancel-button,
	[type="search"]::-webkit-search-decoration {
	  -webkit-appearance: none;
	}
	
	/**
	 * 1. Correct the inability to style clickable types in iOS and Safari.
	 * 2. Change font properties to `inherit` in Safari.
	 */
	::-webkit-file-upload-button {
	  -webkit-appearance: button;
	  /* 1 */
	  font: inherit;
	  /* 2 */
	}
	
	/* Interactive
	   ========================================================================== */
	/*
	 * Add the correct display in IE 9-.
	 * 1. Add the correct display in Edge, IE, and Firefox.
	 */
	details,
	menu {
	  display: block;
	}
	
	/*
	 * Add the correct display in all browsers.
	 */
	summary {
	  display: list-item;
	}
	
	/* Scripting
	   ========================================================================== */
	/**
	 * Add the correct display in IE 9-.
	 */
	canvas {
	  display: inline-block;
	}
	
	/**
	 * Add the correct display in IE.
	 */
	template {
	  display: none;
	}
	
	/* Hidden
	   ========================================================================== */
	/**
	 * Add the correct display in IE 10-.
	 */
	[hidden] {
	  display: none;
	}
	
	html {
	  height: 100%;
	}
	
	fieldset {
	  margin: 0;
	  padding: 0;
	  -webkit-margin-start: 0;
	  -webkit-margin-end: 0;
	  -webkit-padding-before: 0;
	  -webkit-padding-start: 0;
	  -webkit-padding-end: 0;
	  -webkit-padding-after: 0;
	  border: 0;
	}
	
	legend {
	  margin: 0;
	  padding: 0;
	  display: block;
	  -webkit-padding-start: 0;
	  -webkit-padding-end: 0;
	}
	
	/*===============================
	=            Choices            =
	===============================*/
	.choices {
	  position: relative;
	  margin-bottom: 24px;
	  font-size: 16px;
	}
	
	.choices:focus {
	  outline: none;
	}
	
	.choices:last-child {
	  margin-bottom: 0;
	}
	
	.choices.is-disabled .choices__inner, .choices.is-disabled .choices__input {
	  background-color: #EAEAEA;
	  cursor: not-allowed;
	  -webkit-user-select: none;
	     -moz-user-select: none;
	      -ms-user-select: none;
	          user-select: none;
	}
	
	.choices.is-disabled .choices__item {
	  cursor: not-allowed;
	}
	
	.choices[data-type*="select-one"] {
	  cursor: pointer;
	}
	
	.choices[data-type*="select-one"] .choices__inner {
	  padding-bottom: 7.5px;
	}
	
	.choices[data-type*="select-one"] .choices__input {
	  display: block;
	  width: 100%;
	  padding: 10px;
	  border-bottom: 1px solid #DDDDDD;
	  background-color: #FFFFFF;
	  margin: 0;
	}
	
	.choices[data-type*="select-one"] .choices__button {
	  background-image: url("../../icons/cross-inverse.svg");
	  padding: 0;
	  background-size: 8px;
	  height: 100%;
	  position: absolute;
	  top: 50%;
	  right: 0;
	  margin-top: -10px;
	  margin-right: 25px;
	  height: 20px;
	  width: 20px;
	  border-radius: 10em;
	  opacity: .5;
	}
	
	.choices[data-type*="select-one"] .choices__button:hover, .choices[data-type*="select-one"] .choices__button:focus {
	  opacity: 1;
	}
	
	.choices[data-type*="select-one"] .choices__button:focus {
	  box-shadow: 0px 0px 0px 2px #00BCD4;
	}
	
	.choices[data-type*="select-one"]:after {
	  content: "";
	  height: 0;
	  width: 0;
	  border-style: solid;
	  border-color: #333333 transparent transparent transparent;
	  border-width: 5px;
	  position: absolute;
	  right: 11.5px;
	  top: 50%;
	  margin-top: -2.5px;
	  pointer-events: none;
	}
	
	.choices[data-type*="select-one"].is-open:after {
	  border-color: transparent transparent #333333 transparent;
	  margin-top: -7.5px;
	}
	
	.choices[data-type*="select-one"][dir="rtl"]:after {
	  left: 11.5px;
	  right: auto;
	}
	
	.choices[data-type*="select-one"][dir="rtl"] .choices__button {
	  right: auto;
	  left: 0;
	  margin-left: 25px;
	  margin-right: 0;
	}
	
	.choices[data-type*="select-multiple"] .choices__inner, .choices[data-type*="text"] .choices__inner {
	  cursor: text;
	}
	
	.choices[data-type*="select-multiple"] .choices__button, .choices[data-type*="text"] .choices__button {
	  position: relative;
	  display: inline-block;
	  margin-top: 0;
	  margin-right: -4px;
	  margin-bottom: 0;
	  margin-left: 8px;
	  padding-left: 16px;
	  border-left: 1px solid #008fa1;
	  background-image: url("../../icons/cross.svg");
	  background-size: 8px;
	  width: 8px;
	  line-height: 1;
	  opacity: .75;
	}
	
	.choices[data-type*="select-multiple"] .choices__button:hover, .choices[data-type*="select-multiple"] .choices__button:focus, .choices[data-type*="text"] .choices__button:hover, .choices[data-type*="text"] .choices__button:focus {
	  opacity: 1;
	}
	
	.choices__inner {
	  display: inline-block;
	  vertical-align: top;
	  width: 100%;
	  background-color: #f9f9f9;
	  padding: 7.5px 7.5px 3.75px;
	  border: 1px solid #DDDDDD;
	  border-radius: 2.5px;
	  font-size: 14px;
	  min-height: 44px;
	  overflow: hidden;
	}
	
	.is-focused .choices__inner, .is-open .choices__inner {
	  border-color: #b7b7b7;
	}
	
	.is-open .choices__inner {
	  border-radius: 2.5px 2.5px 0 0;
	}
	
	.is-flipped.is-open .choices__inner {
	  border-radius: 0 0 2.5px 2.5px;
	}
	
	.choices__list {
	  margin: 0;
	  padding-left: 0;
	  list-style: none;
	}
	
	.choices__list--single {
	  display: inline-block;
	  padding: 4px 16px 4px 4px;
	  width: 100%;
	}
	
	[dir="rtl"] .choices__list--single {
	  padding-right: 4px;
	  padding-left: 16px;
	}
	
	.choices__list--single .choices__item {
	  width: 100%;
	}
	
	.choices__list--multiple {
	  display: inline;
	}
	
	.choices__list--multiple .choices__item {
	  display: inline-block;
	  vertical-align: middle;
	  border-radius: 20px;
	  padding: 4px 10px;
	  font-size: 12px;
	  font-weight: 500;
	  margin-right: 3.75px;
	  margin-bottom: 3.75px;
	  background-color: #00BCD4;
	  border: 1px solid #00a5bb;
	  color: #FFFFFF;
	  word-break: break-all;
	}
	
	.choices__list--multiple .choices__item[data-deletable] {
	  padding-right: 5px;
	}
	
	[dir="rtl"] .choices__list--multiple .choices__item {
	  margin-right: 0;
	  margin-left: 3.75px;
	}
	
	.choices__list--multiple .choices__item.is-highlighted {
	  background-color: #00a5bb;
	  border: 1px solid #008fa1;
	}
	
	.is-disabled .choices__list--multiple .choices__item {
	  background-color: #aaaaaa;
	  border: 1px solid #919191;
	}
	
	.choices__list--dropdown {
	  display: none;
	  z-index: 1;
	  position: absolute;
	  width: 100%;
	  background-color: #FFFFFF;
	  border: 1px solid #DDDDDD;
	  top: 100%;
	  margin-top: -1px;
	  border-bottom-left-radius: 2.5px;
	  border-bottom-right-radius: 2.5px;
	  overflow: hidden;
	  word-break: break-all;
	}
	
	.choices__list--dropdown.is-active {
	  display: block;
	}
	
	.is-open .choices__list--dropdown {
	  border-color: #b7b7b7;
	}
	
	.is-flipped .choices__list--dropdown {
	  top: auto;
	  bottom: 100%;
	  margin-top: 0;
	  margin-bottom: -1px;
	  border-radius: .25rem .25rem 0 0;
	}
	
	.choices__list--dropdown .choices__list {
	  position: relative;
	  max-height: 300px;
	  overflow: auto;
	  -webkit-overflow-scrolling: touch;
	  will-change: scroll-position;
	}
	
	.choices__list--dropdown .choices__item {
	  position: relative;
	  padding: 10px;
	  font-size: 14px;
	}
	
	[dir="rtl"] .choices__list--dropdown .choices__item {
	  text-align: right;
	}
	
	@media (min-width: 640px) {
	  .choices__list--dropdown .choices__item--selectable {
	    padding-right: 100px;
	  }
	  .choices__list--dropdown .choices__item--selectable:after {
	    content: attr(data-select-text);
	    font-size: 12px;
	    opacity: 0;
	    position: absolute;
	    right: 10px;
	    top: 50%;
	    transform: translateY(-50%);
	  }
	  [dir="rtl"] .choices__list--dropdown .choices__item--selectable {
	    text-align: right;
	    padding-left: 100px;
	    padding-right: 10px;
	  }
	  [dir="rtl"] .choices__list--dropdown .choices__item--selectable:after {
	    right: auto;
	    left: 10px;
	  }
	}
	
	.choices__list--dropdown .choices__item--selectable.is-highlighted {
	  background-color: #f2f2f2;
	}
	
	.choices__list--dropdown .choices__item--selectable.is-highlighted:after {
	  opacity: .5;
	}
	
	.choices__item {
	  cursor: default;
	}
	
	.choices__item--selectable {
	  cursor: pointer;
	}
	
	.choices__item--disabled {
	  cursor: not-allowed;
	  -webkit-user-select: none;
	     -moz-user-select: none;
	      -ms-user-select: none;
	          user-select: none;
	  opacity: .5;
	}
	
	.choices__heading {
	  font-weight: 600;
	  font-size: 12px;
	  padding: 10px;
	  border-bottom: 1px solid #f7f7f7;
	  color: gray;
	}
	
	.choices__button {
	  text-indent: -9999px;
	  -webkit-appearance: none;
	  -moz-appearance: none;
	       appearance: none;
	  border: 0;
	  background-color: transparent;
	  background-repeat: no-repeat;
	  background-position: center;
	  cursor: pointer;
	}
	
	.choices__button:focus {
	  outline: none;
	}
	
	.choices__input {
	  display: inline-block;
	  vertical-align: baseline;
	  background-color: #f9f9f9;
	  font-size: 14px;
	  margin-bottom: 5px;
	  border: 0;
	  border-radius: 0;
	  max-width: 100%;
	  padding: 4px 0 4px 2px;
	}
	
	.choices__input:focus {
	  outline: 0;
	}
	
	[dir="rtl"] .choices__input {
	  padding-right: 2px;
	  padding-left: 0;
	}
	
	.choices__placeholder {
	  opacity: .5;
	}
	
	/*=====  End of Choices  ======*/
	* {
	  box-sizing: border-box;
	}
	
	.s003 {
	  display: -ms-flexbox;
	  display: flex;
	  -ms-flex-pack: center;
	      justify-content: center;
	  -ms-flex-align: center;
	      align-items: center;
	  font-family: 'Poppins', sans-serif;
	  background-size: cover;
	  background-position: center center;
	  padding: 15px;
	}
	
	.s003 form {
	  width: 100%;
	  max-width: 790px;
	  margin-bottom: 0;
	}
	
	.s003 form .inner-form {
	  background: #fff;
	  display: -ms-flexbox;
	  display: flex;
	  width: 100%;
	  -ms-flex-pack: justify;
	      justify-content: space-between;
	  -ms-flex-align: center;
	      align-items: center;
	  box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	  border-radius: 3px;
	}
	
	.s003 form .inner-form .input-field {
	  height: 48px;
	}
	
	.s003 form .inner-form .input-field input {
	  height: 100%;
	  background: transparent;
	  border: 0;
	  display: block;
	  width: 100%;
	  padding: 10px 32px;
	  font-size: 16px;
	  color: #555;
	}
	
	.s003 form .inner-form .input-field input.placeholder {
	  color: #888;
	  font-size: 16px;
	}
	
	.s003 form .inner-form .input-field input:-moz-placeholder {
	  color: #888;
	  font-size: 16px;
	}
	
	.s003 form .inner-form .input-field input::-webkit-input-placeholder {
	  color: #888;
	  font-size: 16px;
	}
	
	.s003 form .inner-form .input-field input:hover, .s003 form .inner-form .input-field input:focus {
	  box-shadow: none;
	  outline: 0;
	  border-color: #fff;
	}
	
	.s003 form .inner-form .input-field.first-wrap {
	  width: 105px;
	  border-right: 1px solid rgba(0, 0, 0, 0.1);
	}
	
	.s003 form .inner-form .input-field.first-wrap .choices__inner {
	  background: transparent;
	  border-radius: 0;
	  border: 0;
	  height: 100%;
	  color: #fff;
	  display: -ms-flexbox;
	  display: flex;
	  -ms-flex-align: center;
	      align-items: center;
	  padding: 10px 30px;
	}
	
	.s003 form .inner-form .input-field.first-wrap .choices__inner .choices__list.choices__list--single {
	  display: -ms-flexbox;
	  display: flex;
	  padding: 0;
	  -ms-flex-align: center;
	      align-items: center;
	  height: 100%;
	}
	
	.s003 form .inner-form .input-field.first-wrap .choices__inner .choices__item.choices__item--selectable.choices__placeholder {
	  display: -ms-flexbox;
	  display: flex;
	  -ms-flex-align: center;
	      align-items: center;
	  height: 100%;
	  opacity: 1;
	  color: #888;
	}
	
	.s003 form .inner-form .input-field.first-wrap .choices__inner .choices__list--single .choices__item {
	  display: -ms-flexbox;
	  display: flex;
	  -ms-flex-align: center;
	      align-items: center;
	  height: 100%;
	  color: #555;
	}
	
	.s003 form .inner-form .input-field.first-wrap .choices[data-type*="select-one"]:after {
	  right: 30px;
	  border-color: #e5e5e5 transparent transparent transparent;
	}
	
	.s003 form .inner-form .input-field.first-wrap .choices__list.choices__list--dropdown {
	  border: 0;
	  background: #fff;
	  padding: 20px 30px;
	  margin-top: 2px;
	  border-radius: 4px;
	  box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	}
	
	.s003 form .inner-form .input-field.first-wrap .choices__list.choices__list--dropdown .choices__item--selectable {
	  padding-right: 0;
	}
	
	.s003 form .inner-form .input-field.first-wrap .choices__list--dropdown .choices__item--selectable.is-highlighted {
	  background: #fff;
	  color: #63c76a;
	}
	
	.s003 form .inner-form .input-field.first-wrap .choices__list--dropdown .choices__item {
	  color: #555;
	  min-height: 24px;
	}
	
	.s003 form .inner-form .input-field.second-wrap {
	  -ms-flex-positive: 1;
	      flex-grow: 1;
	}
	
	.s003 form .inner-form .input-field.third-wrap {
	  width: 74px;
	}
	
	.s003 form .inner-form .input-field.third-wrap .btn-search {
	  height: 100%;
	  width: 100%;
	  white-space: nowrap;
	  color: #fff;
	  border: 0;
	  cursor: pointer;
	  background: #8EC0E4;
	  transition: all .2s ease-out, color .2s ease-out;
	}
	
	.s003 form .inner-form .input-field.third-wrap .btn-search svg {
	  width: 16px;
	}
	
	.s003 form .inner-form .input-field.third-wrap .btn-search:hover {
	  background: #6AAFE6;
	}
	
	.s003 form .inner-form .input-field.third-wrap .btn-search:focus {
	  outline: 0;
	  box-shadow: none;
	}
	
	@media screen and (max-width: 992px) {
	  .s003 form .inner-form .input-field {
	    height: 50px;
	  }
	}
	
	@media screen and (max-width: 767px) {
	  .s003 form .inner-form {
	    -ms-flex-wrap: wrap;
	        flex-wrap: wrap;
	    padding: 20px;
	  }
	  .s003 form .inner-form .input-field {
	    margin-bottom: 20px;
	    border-bottom: 1px solid rgba(0, 0, 0, 0.1);
	  }
	  .s003 form .inner-form .input-field input {
	    padding: 10px 15px;
	  }
	  .s003 form .inner-form .input-field.first-wrap {
	    width: 100%;
	    border-right: 0;
	  }
	  .s003 form .inner-form .input-field.first-wrap .choices__inner {
	    padding: 10px 15px;
	  }
	  .s003 form .inner-form .input-field.first-wrap .choices[data-type*="select-one"]:after {
	    right: 11.5px;
	    border-color: #e5e5e5 transparent transparent transparent;
	  }
	  .s003 form .inner-form .input-field.second-wrap {
	    width: 100%;
	    margin-bottom: 30px;
	  }
	  .s003 form .inner-form .input-field.second-wrap input {
	    border: 1px solid rgba(255, 255, 255, 0.3);
	  }
	  .s003 form .inner-form .input-field.third-wrap {
	    margin-bottom: 0;
	    width: 100%;
	  }
	}
    	
    </style>
</head>

<body>
    <jsp:include page="../topMenuIncludeMyPage.jsp"/>

    <!-- Breadcrumb Section Begin -->
    <div class="breadcrumb-section2">
        <div style="width: 100%">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>액티비티</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->

    <!-- About Us Page Section Begin -->
    <section class="aboutus-page-section spad">
	    <div class="s003">
	      <form action="${pageContext.request.contextPath }/user/activ/list/search" method="get" onsubmit="return chkSubmit()">
	        <div class="inner-form">
	          <div class="input-field first-wrap">
	            <div class="input-select">
	              <select data-trigger="" name="searchOption">
	                <option value="all">전체</option>
	                <option value="제주시">제주시</option>
	                <option value="서귀포시">서귀포시</option>
	              </select>
	            </div>
	          </div>
	          <div class="input-field second-wrap">
	            <input id="search" name="searchKeyword" type="text" value="${activ_name }" placeholder="전체 검색은 공백을 입력하세요" />
	          </div>
	          <div class="input-field third-wrap">
	            <button class="btn-search" type="submit">
	              <svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
	                <path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
	              </svg>
	            </button>
	          </div>
	        </div>
	      </form>
	    </div>
	    <script>
	      const choices = new Choices('[data-trigger]',
	      {
	        searchEnabled: false,
	        itemSelectText: '',
	      });
	
	    </script>
        <div class="container">
            <div class="about-page-text">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="ap-title">
                            <div id="siva3">
                              <h2 id="hotel1">액티비티</h2>
                                <div class="swiper-container swiper1">
                                    <div class="swiper-wrapper">
                                    	<c:forEach var="dto" items="${dto }" varStatus="status">
	                                    	<c:if test="${status.count % 12 == 1 || status.count == 1 }">
	                                    		<div class="swiper-slide">
					                              <nav class="navYam2">
					                                  <ul>
					                                  	</c:if>
					                                      <li onclick="location.href='${pageContext.request.contextPath }/user/activ/view/${dto.activ_uid }'">
					                                      	<div class="item_img">
					                                      		<img src="${dto.activ_pic }"/>
					                                      	</div>
					                                      	<div class="item_info" style="padding: 7px;">
					                                      		<h5 style="font-weight: bold; margin-top: 5px;">${dto.activ_name }</h5>
					                                      		<p class="activ_loc" style="margin-bottom: 0px;">${fn:substring(dto.activ_loc, 8, fn:length(dto.activ_loc)) }</p>
					                                      		<p style="margin-bottom: 0px; text-align: right;"><fmt:formatNumber value="${dto.ticket_last_cost }" pattern="#,###"/>원 ~</p>
					                                      	</div> 
					                                      </li>
					                                    <c:if test="${status.count % 12 == 0 && status.count != 0 }">
				                                  	  </ul>
					                              </nav>
				                              </div>
				                           </c:if>
				                    	</c:forEach>
			                    	</div>
			                	</div>
			                  <div class="swiper-pagination swiper-pagination1"></div>
                            </div>
                        </div>
                    </div>
            	</div>    
            </div>   
        </div>
    </section>
    <!-- About Us Page Section End -->

    <!-- Video Section Begin -->
    <section class="Hot2">
            <div class="section-title">
                <span>할인 중인 액티비티입니다</span>
                <h2 style="font-weight: bold; color: white;">할인 액티비티</h2>
            </div>
            
            <div id="hotId2">
	            <div class="swiper-container swiper2" style="height: 300px;">
	                <div class="swiper-wrapper">
		            	<c:forEach var="dto" items="${sale }" varStatus="status">
		            		<c:if test="${status.count % 3 == 1 || status.count == 1 }"><div class="swiper-slide"></c:if>
				                <div class="hothot2" onclick="location.href='${pageContext.request.contextPath }/user/activ/view/${dto.activ_uid }'">
					                <div class="item_img2">
					              		<img src="${dto.activ_pic }"/>
					              	</div>
					              	<div class="item_info" style="padding: 7px;">
					              		<h5 style="font-weight: bold; margin-top: 5px;">${dto.activ_name }</h5>
					              		<p class="activ_loc" style="margin-bottom: 0px;">${fn:substring(dto.activ_loc, 8, fn:length(dto.activ_loc)) }</p>
					              		<p style="margin: 20px 10px 0px 0px; height: 20px; text-align: right; font-size: 0.8em; text-decoration: line-through;"><fmt:formatNumber value="${dto.ticket_first_cost }" pattern="#,###"/></p>
					              		<p style="margin-bottom: 0px; text-align: right;"><fmt:formatNumber value="${dto.ticket_last_cost }" pattern="#,###"/>원 ~</p>
					              	</div> 
				                </div>
				        	<c:if test="${status.count % 3 == 0 && status.count != 0 }"></div></c:if>
				    	</c:forEach>
	                </div>
	            </div>
				<div class="swiper-pagination swiper-pagination2" style="width: 100%"></div>
            </div>
    </section>
	
	<c:if test="${fn:length(popular) != 0 }">
	<!-- 액티비티 -->
    <section class="sivaHotH" style="margin-top: 400px;">
        <div id="siva5">
            <h2 id="sivaH5" style="font-weight: bold; padding: 10px 0px;">인기 액티비티</h2>
            <div id="button1">
                
            </div>
            <div id="navSale">
                <nav id="navYamHot1">
                    <c:forEach var="dto" items="${popular }" varStatus="status">
	                	<c:if test="${status.count % 5 == 1 || status.count == 1 }">
	                		<ul></c:if>
	                			<li onclick="location.href='${pageContext.request.contextPath }/user/activ/view/${dto.activ_uid }'">
	                				<div class="item_img">
                                  		<img src="${dto.activ_pic }"/>
                                  	</div>
                                  	<div class="item_info" style="padding: 7px;">
                                  		<h5 style="font-weight: bold; margin-top: 5px;">${dto.activ_name }</h5>
                                  		<p class="activ_loc" style="margin-bottom: 0px;">${fn:substring(dto.activ_loc, 8, fn:length(dto.activ_loc)) }</p>
                                  		<p style="margin-bottom: 0px; text-align: right;"><fmt:formatNumber value="${dto.ticket_last_cost }" pattern="#,###"/>원 ~</p>
                                  	</div> 
	                			</li>
                			<c:if test="${status.count == 5 || status.count == 10 }">
               			</ul></c:if>
	               	</c:forEach>
                </nav>
            </div>
        </div>
    </section>
	</c:if>
	
	<c:if test="${fn:length(popular) == 0 }">
		<section style="height: 300px;"></section>
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
                        <div class="co-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

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
    <script src="${pageContext.request.contextPath}/USERJS/swiper.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <script>
    var swiper1 = new Swiper('.swiper1', {
        spaceBetween: 30,
        pagination: {
          el: '.swiper-pagination1',
          clickable: true,
        },
      });
      var swiper2 = new Swiper('.swiper2', {
        spaceBetween: 30,
        pagination: {
          el: '.swiper-pagination2',
          clickable: true,
        },
      });
    </script>
    
    <script>
    	$(document).ready(function() {
    		var searchOption = "${param.searchOption }";
    		if (searchOption === "전체") {
    			$(".list li").removeClass("selected")
    			$("li[data-value='전체']").addClass("selected")
    			$("li[data-value='전체']").addClass("focus")
    			$(".current").text("전체")
    		} else if (searchOption === "제주시") {
    			$(".list li").removeClass("selected")
    			$("li[data-value='제주시']").addClass("selected")
    			$("li[data-value='제주시']").addClass("focus")
    			$(".current").text("제주시")
    		} else if (searchOption === "서귀포시") {
    			$(".list li").removeClass("selected")
    			$("li[data-value='서귀포시']").addClass("selected")
    			$("li[data-value='서귀포시']").addClass("focus")
    			$(".current").text("서귀포시")
    		}
    		
    		if ((window.location.pathname).toString().includes("search")) {
    			$(".Hot2").css("display", "none");
    			$(".sivaHotH").css("display", "none");
    		}
    		
    		var ajaxOption = "";
    		var ajaxKeyword = "";
    		
    		$("#search").keyup(function() {
    			var curOption = $(".current").text();
    			ajaxKeyword = $("#search").val();
    			
    			// 특수문자 체크
    			var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi
   			    if (regExp.test(ajaxKeyword)) {
   			        ajaxKeyword = ajaxKeyword.replace(regExp, "")
   			    }
    			
    			// 자음 모음 체크
    			var pattern = /([^가-힣\x20])/i; 
    			if (pattern.test(ajaxKeyword)) { 
    				ajaxKeyword = ajaxKeyword.replace(pattern, " ")
    			}
    			
    			if (curOption === "전체") {
    				ajaxOption = "all"
    			} else if (curOption === "제주시") {
    				ajaxOption = "jeju"
    			} else if (curOption === "서귀포시") {
    				ajaxOption = "seogwipo"
    			}
    		})
    		
    		$("#search").autocomplete({
                source : function( request, response ) {
                     $.ajax({
                            type: 'get',
                            url: "http://localhost:8090/mgb/user/activ/ajax/" + ajaxOption + "/" + ajaxKeyword,
                            dataType: "json",
                            success: function(data) {
                                response(
                                    $.map(data, function(item) {  
                                        return {
                                            label: item.activ_name,  
                                            value: item.activ_name, 
                                            test : item.activ_name 
                                        }
                                    })
                                );
                            }
                       });
                    },
                select : function(event, ui) {
                    console.log(ui);
                    console.log(ui.item.activ_name);
                    console.log(ui.item.activ_name);
                    console.log(ui.item.activ_name);
                    
                },
                focus : function(event, ui) {
                    return false;
                },
                minLength: 1,
                autoFocus: true,
                classes: {
                    "ui-autocomplete": "highlight"
                },
                delay: 100,
                position: { my : "right top", at: "right bottom" },
                close : function(event){
                    console.log(event);
                }
            });
    	})
    </script>
    
</body>

</html>