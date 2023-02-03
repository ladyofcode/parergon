<?php
import('lib.pkp.classes.plugins.ThemePlugin');
class ParergonThemePlugin extends ThemePlugin {

    /**
     * Load the custom styles for our theme
     * @return null
     */
    public function init() {
        $this->addStyle('stylesheet', 'styles/styles.css');
    }

    /**
     * Get the display name of this theme
     * @return string
     */
    function getDisplayName() {
        return 'Parergon Theme';
    }

    /**
     * Get the description of this plugin
     * @return string
     */
    function getDescription() {
        return 'OJS Theme for the Parergon Journal';
    }
}
