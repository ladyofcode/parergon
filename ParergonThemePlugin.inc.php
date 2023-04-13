<?php
import('lib.pkp.classes.plugins.ThemePlugin');
class ParergonThemePlugin extends ThemePlugin
{

    /**
     * Load the custom styles for our theme
     * @return null
     */
    public function init()
    {

        $this->addMenuArea('primary');

        $this->addStyle('stylesheet', 'styles/index.less');

        HookRegistry::register('TemplateManager::display', array($this, 'getCurrentIssue'));
    }

    public function getCurrentIssue($hookName, $args)
    {

        // Retrieve the TemplateManager and the template filename
        $templateMgr = $args[0];
        $template = $args[1];
        $request = $this->getRequest();

        // Don't do anything if we're not loading the right template
        if ($template != 'frontend/pages/issueArchive.tpl') {
            return false;
        }

        $issueDao = DAORegistry::getDAO('IssueDAO');
        $context = Application::get()->getRequest()->getContext();

        if ($template === 'frontend/pages/issueArchive.tpl') {

            // // Get the current issue
            $issue = $issueDao->getCurrent($context->getId());

            // // Assign the issue to the template
            $templateMgr->assign('currentIssue', $issue);
        } else {
            $issue = $templateMgr->getTemplateVars('issue');
        }

        return false;
    }

    /**
     * Get the display name of this theme
     * @return string
     */
    function getDisplayName()
    {
        return 'Parergon Theme';
    }

    /**
     * Get the description of this plugin
     * @return string
     */
    function getDescription()
    {
        return 'OJS Theme for the Parergon Journal';
    }
}
