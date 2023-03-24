{**
 * templates/frontend/pages/issueArchive.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Display a list of recent issues.
 *
 * @uses $issue Issue The issue
 * @uses $issues Array Collection of issues to display
 * @uses $prevPage int The previous page number
 * @uses $nextPage int The next page number
 * @uses $showingStart int The number of the first item on this page
 * @uses $showingEnd int The number of the last item on this page
 * @uses $total int Count of all published monographs
 *}
 
{capture assign="pageTitle"}
	{if $prevPage}
		{translate key="archive.archivesPageNumber" pageNumber=$prevPage+1}
	{else}
		{translate key="archive.archives"}
	{/if}
{/capture}
{include file="frontend/components/header.tpl" pageTitleTranslated=$pageTitle}

<div class="wrapper">
	<div class="container">
		<h1>
			{$pageTitle|escape}
		</h1>

		{* No issues have been published *}
		{if empty($issues)}
			<p>{translate key="current.noCurrentIssueDesc"}</p>

			{* List issues *}
		{else}

			{if $currentIssue}

				<section class="issue issue-featured">
					{assign var=issueCover value=$currentIssue->getLocalizedCoverImageUrl()}
					{if $issueCover}
						<a class="cover" href="{url op="view" page="issue" path=$currentIssue->getBestIssueId()}">
							{capture assign="defaultAltText"}
								{translate key="currentIssue.viewIssueIdentification" identification=$currentIssue->getIssueIdentification()|escape}
							{/capture}
							<img src="{$issueCover|escape}" class="issue-image"
								alt="{$currentIssue->getLocalizedCoverImageAltText()|escape|default:$defaultAltText}">
						</a>
					{/if}

					<div class="info">
						<div class="meta">

							<p class="tagline">Current issue</p>

							<h3 class="title">
								{$currentIssue -> getLocalizedTitle()}</h3>
							<p>Vol {$currentIssue -> getVolume()}, Number {$currentIssue -> getNumber()},
								{$currentIssue -> getYear()}</p>
						</div>

						<a href="{url op="view" page="issue" path=$currentIssue->getBestIssueId()}"
							class="view-issue"><button>View current issue</button></a>

					</div>
				</section>

			{/if}


			<section class="past-issues">
				<h2>All issues</h2>
				<ul class="">
					{foreach from=$issues item="issue"}
						<li>
							{include file="frontend/objects/issue_summary.tpl"}
						</li>
					{/foreach}
				</ul>
			</section>


			{* Pagination *}
			{if $prevPage > 1}
				{capture assign=prevUrl}{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive" path=$prevPage}{/capture}
			{elseif $prevPage === 1}
				{capture assign=prevUrl}{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}{/capture}
			{/if}
			{if $nextPage}
				{capture assign=nextUrl}{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive" path=$nextPage}{/capture}
			{/if}
			{include
						file="frontend/components/pagination.tpl"
						prevUrl=$prevUrl
						nextUrl=$nextUrl
						showingStart=$showingStart
						showingEnd=$showingEnd
						total=$total
					}
		{/if}
	</div>
</div>

{include file="frontend/components/footer.tpl"}