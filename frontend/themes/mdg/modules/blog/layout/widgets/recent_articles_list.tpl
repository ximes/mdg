{*
	variables that are available:
	- {$widgetBlogRecentArticlesList}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesList}
	<section id="blogRecentArticlesListWidget" class="mod">
		<div class="inner">
			<header class="hd">
				<h2>Blog</h2>
			</header>
			<div class="bd content">
				<ul>
					{$widgetBlogRecentArticlesList|dump}
					{iteration:widgetBlogRecentArticlesList}
						<li><a href="{$widgetBlogRecentArticlesList.full_url}" title="{$widgetBlogRecentArticlesList.title}">{$widgetBlogRecentArticlesList.title}</a></li>
						{* Written by *}
						{$msgWrittenBy|ucfirst|sprintf:{$widgetBlogRecentArticlesList.user_id|usersetting:'nickname'}}

						{* Written on *}
						{$lblOn} {$widgetBlogRecentArticlesList.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}

						{* Category*}
						{$lblIn} {$lblThe} {$lblCategory} <a href="{$widgetBlogRecentArticlesList.category_full_url}" title="{$widgetBlogRecentArticlesList.category_title}">{$widgetBlogRecentArticlesList.category_title}</a>{option:!widgetBlogRecentArticlesList.tags}.{/option:!widgetBlogRecentArticlesList.tags}

						{* Tags *}
						{option:widgetBlogRecentArticlesList.tags}
							{$lblWith} {$lblThe} {$lblTags}
							{iteration:widgetBlogRecentArticlesList.tags}
								<a href="{$widgetBlogRecentArticlesList.tags.full_url}" rel="tag" title="{$widgetBlogRecentArticlesList.tags.name}">{$widgetBlogRecentArticlesList.tags.name}</a>{option:!widgetBlogRecentArticlesList.tags.last}, {/option:!widgetBlogRecentArticlesList.tags.last}{option:widgetBlogRecentArticlesList.tags.last}.{/option:widgetBlogRecentArticlesList.tags.last}
							{/iteration:widgetBlogRecentArticlesList.tags}
						{/option:widgetBlogRecentArticlesList.tags}
					{/iteration:widgetBlogRecentArticlesList}
				</ul>
			</div>
		</div>
	</section>
{/option:widgetBlogRecentArticlesList}