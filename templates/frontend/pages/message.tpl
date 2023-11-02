{**
 * templates/frontend/pages/message.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2000-2020 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Generic message page.
 * Displays a simple message and (optionally) a return link.
 *}
{include file="frontend/components/header.tpl"}

<div class="wrapper">
	<div class="container">
		<h1>
			<span>{translate key=$pageTitle}</span>
		</h1>
		<div>
			{if $messageTranslated}
				<p>{$messageTranslated}</p>

			{else}
				<p>{translate key=$message}</p>
			{/if}
		</div>
		{if $backLink}
			<div class="cmp_back_link">
				<a href="{$backLink}">{translate key=$backLinkLabel}</a>
			</div>
		{/if}
	</div>
</div>

{include file="frontend/components/footer.tpl"}