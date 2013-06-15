{option:languages}
		{iteration:languages}
			<li{option:languages.current} class="active"{/option:languages.current}>
				<a href="{$languages.url}">{$lblViewThisWebsiteIn} {$languages.name}</a>
			</li>
		{/iteration:languages}
{/option:languages}