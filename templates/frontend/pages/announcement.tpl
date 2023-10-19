{include file="frontend/components/header.tpl" pageTitleTranslated=$announcement->getLocalizedTitle()|escape}

<div class="wrapper">
	<div class="container">

		<article>
			<h1 class="announcement-title">
				<span>{$announcement->getLocalizedTitle()|escape}</span>
			</h1>
			<div>
				<p>Date published: {$announcement->getDatePosted()|date_format:$dateFormatShort}</p>
			</div>
			<div class="description">
				{if $announcement->getLocalizedDescription()}
					{$announcement->getLocalizedDescription()|strip_unsafe_html}
				{else}
					{$announcement->getLocalizedDescriptionShort()|strip_unsafe_html}
				{/if}
			</div>
		</article>

	</div>
</div>


{include file="frontend/components/footer.tpl"}