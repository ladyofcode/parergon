{**
 * templates/frontend/objects/issue_toc.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief View of an Issue which displays a full table of contents.
 *
 * @uses $issue Issue The issue
 * @uses $issueTitle string Title of the issue. May be empty
 * @uses $issueSeries string Vol/No/Year string for the issue
 * @uses $issueGalleys array Galleys for the entire issue
 * @uses $hasAccess bool Can this user access galleys for this context?
 * @uses $publishedSubmissions array Lists of articles published in this issue
 *   sorted by section.
 * @uses $primaryGenreIds array List of file genre ids for primary file types
 * @uses $heading string HTML heading element, default: h2
 *}
 
{if !$heading}
	{assign var="heading" value="h2"}
{/if}
{assign var="articleHeading" value="h3"}
{if $heading == "h3"}
	{assign var="articleHeading" value="h4"}
{elseif $heading == "h4"}
	{assign var="articleHeading" value="h5"}
{elseif $heading == "h5"}
	{assign var="articleHeading" value="h6"}
{/if}
<div class="wrapper">
	<div class="container">
		{assign var=isCurrentIssue value=$issue->getCurrent()}
		{if !$isCurrentIssue}
			<h1>Past issue</h1>
		{else}
			<h1>Current issue</h1>
		{/if}

		<section class="issue">
			{assign var=issueCover value=$issue->getLocalizedCoverImageUrl()}
			{if $issueCover}
				<a class="cover" href="{url op="view" page="issue" path=$issue->getBestIssueId()}">
					{capture assign="defaultAltText"}
						{translate key="issue.viewIssueIdentification" identification=$issue->getIssueIdentification()|escape}
					{/capture}
					<img src="{$issueCover|escape}" class="issue-image"
						alt="{$issue->getLocalizedCoverImageAltText()|escape|default:$defaultAltText}">
				</a>
			{/if}

			<div class="info">
				<div class="meta">
					{if $requestedOp === "archive"}
						{if !$isCurrentIssue}
							<p class="tagline">Past issue</p>
						{else}
							<p class="tagline">Current issue</p>
						{/if}

					{/if}
					<h2 class="title">
						{if $issueTitle}
							{$issueTitle|escape}
						{else}
							{$issueSeries|escape}
						{/if}</h2>
					<p>Vol {$issue -> getVolume()}, Number {$issue -> getNumber()}, {$issue -> getYear()}</p>

					{if $issueGalleys}
						<ul class="galleys-links">
							{foreach from=$issueGalleys item=galley}
								<li>
									{include file="frontend/objects/galley_link.tpl" parent=$issue labelledBy="issueTocGalleyLabel" purchaseFee=$currentJournal->getData('purchaseIssueFee') purchaseCurrency=$currentJournal->getData('currency')}
									<img src="{$baseUrl}/plugins/themes/parergon/templates/images/pdf.png" alt="">
								</li>
							{/foreach}
						</ul>
					{/if}

				</div>

				<p>
					<a class="view-all" href="https://muse.jhu.edu/journal/309">View all issues at Project MUSE</a>
				</p>

				{foreach name=sections from=$publishedSubmissions item=section}
					{if $section.articles}
						<h3>Articles</h3>
						<ul class="article-list">
							{foreach from=$section.articles item=article}
								<li class="article-entry">
									{include file="frontend/objects/article_summary.tpl" heading=$articleHeading}
								</li>
							{/foreach}
						</ul>
					{/if}
				{/foreach}
			</div>
		</section>
	</div>
</div>