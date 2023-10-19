{**
 * frontend/pages/navigationMenuItemViewContent.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * Display NavigationMenuItem content
 *}

{include file="frontend/components/header.tpl" pageTitleTranslated=$title}

{if $title == "About"}
	{include file="frontend/pages/about.tpl"}
{elseif $title == "Announcements"}
	{include file="frontend/pages/announcements.tpl"}
{elseif $title == "Login"}
	{include file="frontend/pages/userLogin.tpl"}
{elseif $title == "Register"}
	{include file="frontend/pages/userRegister.tpl"}
{elseif $title == "Archives"}
	{include file="frontend/pages/issueArchive.tpl"}
{elseif $title == "Issues"}
	{include file="frontend/pages/issues.tpl"}
{elseif $title == "Prize"}
	<div class="wrapper">
		<div class="container">
			<h1 class="page_title">{'Parergon Prize'|escape}</h1>
			{$content}
		</div>
	</div>
{elseif $title == "Contact"}
	<div class="wrapper">
		<div class="container">
			<h1 class="page_title">{'Contact'|escape}</h1>
			{$content}
		</div>
	</div>
{else}
	<div class="wrapper">
		<div class="container">
			<h1 class="page_title">{$title|escape}</h1>
			{$content}
		</div>
	</div>
{/if}

{include file="frontend/components/footer.tpl"}