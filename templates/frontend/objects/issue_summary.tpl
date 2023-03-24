{**
 * templates/frontend/objects/issue_summary.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief View of an Issue which displays a summary for use in lists
 *
 * @uses $issue Issue The issue
 *}
 
{if $issue->getShowTitle()}
	{assign var=issueTitle value=$issue->getLocalizedTitle()}
{/if}
{assign var=issueSeries value=$issue->getIssueSeries()}
{assign var=issueCover value=$issue->getLocalizedCoverImageUrl()}

<div class="past-issue">
	{if $issueCover}
		<a class="cover" href="{url op="view" path=$issue->getBestIssueId()}">
			<img src="{$issueCover|escape}" alt="{$issue->getLocalizedCoverImageAltText()|escape|default:''}">
		</a>
	{/if}

	<div class="info">
		<div class="meta">
			<a class="title" href="{url op="view" path=$issue->getBestIssueId()}">
				<h3>
					{if $issueTitle}
						{$issueTitle|escape}
					{else}
						{$issueSeries|escape}
					{/if}
				</h3>

			</a>
			{if $issueTitle && $issueSeries}
				<p>Vol {$issue -> getVolume()}, Number {$issue -> getNumber()}, {$issue -> getYear()}</p>
			{/if}

			{$issue->getLocalizedDescription()|strip_unsafe_html}
		</div>

		<a href="{url op="view" path=$issue->getBestIssueId()}" class="view-issue"><button class="past">View
				issue</button></a>
	</div>
</div>