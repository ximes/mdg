{option:navigation}    
    	{iteration:navigation}
      	<li class="{option:navigation.selected}active{/option:navigation.selected} {$navigation.navigation_title}"
      		<a href="{$navigation.link}" title="{$navigation.navigation_title}"{option:navigation.nofollow} rel="nofollow"{/option:navigation.nofollow}></a>
				{option:navigation.selected}{$navigation.children}{/option:navigation.selected}
    		</li>
		{/iteration:navigation}
{/option:navigation}