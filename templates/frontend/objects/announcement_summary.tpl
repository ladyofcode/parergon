<article class="announcement-summary">
	<h2 class="announcement-summary-heading">
		<a href="{url router=$smarty.const.ROUTE_PAGE page="announcement" op="view" path=$announcement->getId()}">
			{$announcement->getLocalizedTitle()|escape}
		</a>
	</h2>

	<p class="announcement-summary-date">
		{$announcement->getDatePosted()|date_format:$dateFormatShort}
	</p>

	<div class="announcement-summary-short-description">
		{$announcement->getLocalizedDescriptionShort()|strip_unsafe_html}
	</div>

	<a href="{url router=$smarty.const.ROUTE_PAGE page="announcement" op="view" path=$announcement->getId()}"
		class="announcement-summary-read-more">
		<span>
			{translate key="common.readMoreWithTitle" title=$announcement->getLocalizedTitle()|escape}
		</span>
	</a>
</article>