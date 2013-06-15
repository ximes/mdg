<footer id="footer">
	<p class="muted credit">{$now|date:'Y'} {$siteTitle}</p>
</footer>
<div class=" footer-nav">
	<ul class="language">
		{include:core/layout/templates/languages-footer.tpl}
		{iteration:footerLinks}
			<li{option:footerLinks.selected} class="active"{/option:footerLinks.selected}>
				<a href="{$footerLinks.url}" title="{$footerLinks.title}"{option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel}>
					{$footerLinks.title}
				</a>
			</li>
		{/iteration:footerLinks}
		
	</ul>
</div>
