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

 {* {include file="frontend/components/breadcrumbs.tpl" currentTitle=$title} *}
 
 {if $title == "About"}
	 {include file="frontend/pages/about.tpl"}
 {elseif $title == "Contact"}
	 {include file="frontend/pages/contact.tpl"}
 {elseif $title == "Featured Content"}
	 {include file="frontend/pages/featured-content.tpl"}
 {elseif $title == "Issues"}
	 {include file="frontend/pages/issues.tpl"}
 {elseif $title == "Search"}
	 {include file="frontend/pages/search.tpl"}
 {elseif $title == "Submissions"}
	 {include file="frontend/pages/submissions.tpl"}
 {elseif $title == "Contact"}
	 {include file="frontend/pages/subscribe.tpl"}
 {else}
	 <div class="page">
		 <h1 class="page_title">{$title|escape}</h1>
		 {$content}
	 </div>
 {/if}
 
 {include file="frontend/components/footer.tpl"}