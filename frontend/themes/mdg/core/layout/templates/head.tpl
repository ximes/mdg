<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="{$LANGUAGE}"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="{$LANGUAGE}"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="{$LANGUAGE}"> <![endif]-->
<!--[if IE 9]>    <html class="no-js ie9" lang="{$LANGUAGE}"> <![endif]-->
<!-- Consider adding an manifest.appcache: h5bp.com/d/Offline -->
<!--[if gt IE 9]><!--> <html class="no-js" lang="{$LANGUAGE}" itemscope itemtype="http://schema.org/Product"> <!--<![endif]-->
<head>

	

	{* Meta *}
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Language" content="{$LANGUAGE}" />
    <meta name="author" content="MdG">
	{$meta}
	{$metaCustom}

	<title>{$pageTitle}</title>

	{* Favicon and Apple touch icon *}
	<link rel="shortcut icon" href="{$THEME_URL}/favicon.ico" />
	<link rel="apple-touch-icon" href="{$THEME_URL}/apple-touch-icon.png" />

	<!-- Facebook Metadata /-->
	<meta property="fb:page_id" content="" />
	<meta property="og:image" content="" />
	<meta property="og:description" content=""/>
	<meta property="og:title" content=""/>

	<!-- Google+ Metadata /-->
	<meta itemprop="name" content="">
	<meta itemprop="description" content="">
	<meta itemprop="image" content="">

	{* Windows 8 tile *}
	<meta name="application-name" content="{$siteTitle}"/>
	<meta name="msapplication-TileColor" content="#3380aa"/>
	<meta name="msapplication-TileImage" content="{$THEME_URL}/tile.png"/>

  <!-- Use the .htaccess and remove these lines to avoid edge case issues.
       More info: h5bp.com/b/378 -->
 	
 	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 	<meta name="description" content="" />
  	<meta name="keywords" content="" />
  	<meta name="author" content="humans.txt">

	{* Stylesheets *}
	{iteration:cssFiles}
		<link rel="stylesheet" href="{$cssFiles.file}" />
	{/iteration:cssFiles}

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	{* Site wide HTML *}
	{$siteHTMLHeader}

	<script src="{$THEME_URL}/core/js/libs/modernizr-2.6.2.min.js"></script>
	
</head>