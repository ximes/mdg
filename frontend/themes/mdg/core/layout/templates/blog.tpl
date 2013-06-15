{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<div id="wrap">
<!--
				{* Skip link *}
				<div id="skip">
					<p><a href="#main">{$lblSkipToContent|ucfirst}</a></p>
				</div>

				{* Navigation *}
				<nav id="headerNavigation">
					<h4>{$lblMainNavigation|ucfirst}</h4>
					
				</nav>


				{* Top position *}
				{iteration:positionTop}
					{$positionTop.blockContent}
				{/iteration:positionTop}

				{* Breadcrumb *}
				<div id="breadcrumb">
					<h4>{$lblBreadcrumb|ucfirst}</h4>
					{include:core/layout/templates/breadcrumb.tpl}
				</div>-->

	<header>
		{* Language *}
		 <div class="navbar header-nav">
	  		<ul class="language pull-left nav">
				{include:core/layout/templates/languages.tpl}
	  		</ul>

	  		<ul class="social pull-right nav">
				{$var|getsubnavigation:'page':431:2}
	  		</ul>
	  	</div>
	  	<div class="logo">
			    <a href="/"></a>
		</div>
		{$var|getnavigation:'page':1:1:431}
	</header>

	<div class="products">
		<div class="menu-after">
			<div class="container-fluid ribbon-before">
				<div class="row">
					<div class="nine columns">
						{* Main column *}
								{* Main position *}
							{iteration:positionMain}
								{$positionMain.blockContent}
							{/iteration:positionMain}
						</div>
						<div class="three columns">
							{* Right position *}
							{iteration:positionRight}
								{$positionRight.blockContent}
							{/iteration:positionRight}
						</div>
				</div>
		  </div>
		</div>
	</div>
	<noscript>
		<div class="message notice">
			<h4>{$lblEnableJavascript|ucfirst}</h4>
			<p>{$msgEnableJavascript}</p>
		</div>
	</noscript>

	<div class="container ribbon">
		<div class="row">
			<div class="six columns button-link">
			{* RibbonLeft position *}
			{iteration:positionRibbonLeft}
				{$positionRibbonLeft.blockContent}
			{/iteration:positionRibbonLeft}
			</div>
			<div class="six columns button-link">
			{* RibbonRight position *}
			{iteration:positionRibbonRight}
				{$positionRibbonRight.blockContent}
			{/iteration:positionRibbonRight}
			</div>
		</div>
	</div>


	<div class="contacts">
	<div class="container ribbon-after">
		<div class="row">
			<div class="six columns">
				{* ContactLeft position *}
				{iteration:positionContactLeft}
					{$positionContactLeft.blockContent}
				{/iteration:positionContactLeft}
			</div>
			<div class="six columns">
				{* ContactRight position *}
				{iteration:positionContactRight}
					{$positionContactRight.blockContent}
				{/iteration:positionContactRight}
			</div>
		</div>
	</div>
	</div>
	<div class="clear"></div>
	<div id="push"></div>
</div>
<div class="bg-bottom"></div>


	{include:core/layout/templates/footer.tpl}



	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Theme specific Javascript *}
  <!-- Grab Google CDN's jQuery, fall back to local if offline -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="{$THEME_URL}/core/js/libs/jquery-1.9.1.min.js"><\/script>')</script>
	<script src="{$THEME_URL}/core/js/libs/gumby.min.js"></script>
	<script src="{$THEME_URL}/core/js/libs/ui/gumby.navbar.js"></script>
	<script src="{$THEME_URL}/core/js/plugins.js"></script>
	<script src="{$THEME_URL}/core/js/main.js"></script>
	<script defer src="{$THEME_URL}/core/js/jquery.flexslider-min.js"></script>
	<script src="{$THEME_URL}/core/js/mdg.js"></script>

  <!-- Change UA-XXXXX-X to be your site's ID -->
  <!--<script>
    window._gaq = [['_setAccount','UAXXXXXXXX1'],['_trackPageview'],['_trackPageLoadTime']];
    Modernizr.load({
      load: ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js'
    });
  </script>-->

  <!-- Prompt IE 6 users to install Chrome Frame. Remove this if you want to support IE 6.
       chromium.org/developers/how-tos/chrome-frame-getting-started -->
  <!--[if lt IE 7 ]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
    <script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
  <![endif]-->

	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>