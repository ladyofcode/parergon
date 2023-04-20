{**
 * templates/frontend/pages/submissions.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view the editorial team.
 *
 * @uses $currentContext Journal|Press The current journal or press
 * @uses $submissionChecklist array List of requirements for submissions
 *}
 
{include file="frontend/components/header.tpl" pageTitle="about.submissions"}

<div class="wrapper">
    <div class="container">
        <h1>
            Submission information
        </h1>

        <div class="submission-link">
            {if $sections|@count == 0 || $currentContext->getData('disableSubmissions')}
                {translate key="author.submit.notAccepting"}
            {else}
                <p>
                    {if $isUserLoggedIn}
                        {capture assign="newSubmission"}<a
                            href="{url page="submission" op="wizard"}">{translate key="about.onlineSubmissions.newSubmission"}</a>{/capture}
                        {capture assign="viewSubmissions"}<a
                            href="{url page="submissions"}">{translate key="about.onlineSubmissions.viewSubmissions"}</a>{/capture}
                        {translate key="about.onlineSubmissions.submissionActions" newSubmission=$newSubmission viewSubmissions=$viewSubmissions}
                    {else}
                        {capture assign="login"}<a
href="https://parergon.org/index.php/parergon/submission/wizard">{translate key="about.onlineSubmissions.login"}</a>{/capture}
                        {capture assign="register"}<a
                            href="{url page="user" op="register"}">{translate key="about.onlineSubmissions.register"}</a>{/capture}
                        {translate key="about.onlineSubmissions.registrationRequired" login=$login register=$register}
                    {/if}
                </p>
            {/if}
        </div>

        <hr />

        <h2>Subscription Information</h2>

        <p>A subscription to <em>Parergon</em> is included in membership of <a
                href="https://www.anzamems.org/">ANZAMEMS</a>.</p>

        <p>For details of current subscription rates, and payment details, please visit the <a
                href="https://www.anzamems.org/">ANZAMEMS membership page</a>. Information for Libraries, and details of
            Institutional subscriptions, can also be found on the <a href="https://www.anzamems.org/">same page</a>.
        </p>

        <p>Select back issues of <em>Parergon</em> (Vol. 28, 2011-Vol. 37, 2020) are available via a print-on-demand
            service. Each back issue costs $130.00 AUD (including postage and handling). To purchase a back issue please
            <a href="mailto:info@anzamems.org">email the ANZAMEMS Executive Administrator</a>, Dr Marina Gerzic.</p>

        {if $submissionChecklist}
            <div class="submission_checklist">
                <h2>
                    {translate key="about.submissionPreparationChecklist"}
                    {include file="frontend/components/editLink.tpl" page="management" op="settings" path="workflow" anchor="submission/submissionChecklist" sectionTitleKey="about.submissionPreparationChecklist"}
                </h2>
                <p>{translate key="about.submissionPreparationChecklist.description"}</p>
                <ul>
                    {foreach from=$submissionChecklist item=checklistItem}
                        <li>
                            <span class="fa fa-check" aria-hidden="true"></span>
                            {$checklistItem.content|nl2br}
                        </li>
                    {/foreach}
                </ul>
            </div>
        {/if}

        {if $currentContext->getLocalizedData('authorGuidelines')}
            <div class="author_guidelines" id="authorGuidelines">
                <h2>
                    {translate key="about.authorGuidelines"}
                    {include file="frontend/components/editLink.tpl" page="management" op="settings" path="workflow" anchor="submission/authorGuidelines" sectionTitleKey="about.authorGuidelines"}
                </h2>
                {$currentContext->getLocalizedData('authorGuidelines')}
            </div>
        {/if}

        {if $currentContext->getLocalizedData('copyrightNotice')}
            <div class="copyright_notice">
                <h2>
                    {translate key="about.copyrightNotice"}
                    {include file="frontend/components/editLink.tpl" page="management" op="settings" path="workflow" anchor="submission/authorGuidelines" sectionTitleKey="about.copyrightNotice"}
                </h2>
                {$currentContext->getLocalizedData('copyrightNotice')}
            </div>
        {/if}

        <hr />

        <div class="submission-link">
            {if $sections|@count == 0 || $currentContext->getData('disableSubmissions')}
                {translate key="author.submit.notAccepting"}
            {else}
                <p>
                    {if $isUserLoggedIn}
                        {capture assign="newSubmission"}<a
                            href="{url page="submission" op="wizard"}">{translate key="about.onlineSubmissions.newSubmission"}</a>{/capture}
                        {capture assign="viewSubmissions"}<a
                            href="{url page="submissions"}">{translate key="about.onlineSubmissions.viewSubmissions"}</a>{/capture}
                        {translate key="about.onlineSubmissions.submissionActions" newSubmission=$newSubmission viewSubmissions=$viewSubmissions}
                    {else}
                        {capture assign="login"}<a
                            href="{url page="login"}">{translate key="about.onlineSubmissions.login"}</a>{/capture}
                        {capture assign="register"}<a
                            href="{url page="user" op="register"}">{translate key="about.onlineSubmissions.register"}</a>{/capture}
                        {translate key="about.onlineSubmissions.registrationRequired" login=$login register=$register}
                    {/if}
                </p>
            {/if}
        </div>
    </div>
</div>

{include file="frontend/components/footer.tpl"}