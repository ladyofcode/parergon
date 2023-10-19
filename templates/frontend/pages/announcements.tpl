{include file="frontend/components/header.tpl" pageTitle="announcement.announcements"}

<div class="wrapper">
	<div class="container">
		<h1>
			<span>{translate key="announcement.announcements"}</span>
		</h1>
		{include file="frontend/components/editLink.tpl" page="management" op="settings" path="announcements" anchor="announcements" sectionTitleKey="announcement.announcements"}

		{$announcementsIntroduction|strip_unsafe_html}

		{foreach from=$announcements item=announcement}
			{include file="frontend/objects/announcement_summary.tpl"}
		{/foreach}
	</div>
</div>

{include file="frontend/components/footer.tpl"}