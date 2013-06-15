{option:languages}
		{iteration:languages}
			<li{option:languages.current} class="selected"{/option:languages.current}>
				<a href="{$languages.url}">{$languages.label|uppercase}</a>
			</li>
		{/iteration:languages}
{/option:languages}