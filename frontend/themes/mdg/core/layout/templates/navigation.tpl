<div class="navbar main-menu">
    <a class="toggle" data-trigger=".nav" gumby-trigger=".nav" href="#"><i class="icon-menu"></i></a>
{option:navigation}    
    <ul class="nav">
    	{iteration:navigation}
      	<li class="{option:navigation.selected}active{/option:navigation.selected} {cycle:'':'':'li-logo'}">
           {cycle:'':'':'</li><li class="li-logo">'}
      		<a href="{$navigation.link}" title="{$navigation.navigation_title}"{option:navigation.nofollow} rel="nofollow"{/option:navigation.nofollow}>{$navigation.navigation_title}</a>
				{option:navigation.selected}{$navigation.children}{/option:navigation.selected}
		</li>
		{/iteration:navigation}
    </ul>
{/option:navigation}
</div>