<?php

namespace Backend\Modules\Analytics\Installer;

use Backend\Core\Installer\ModuleInstaller;

/**
 * Installer for the analytics module
 */
class Installer extends ModuleInstaller
{
    public function install(): void
    {
        $this->addModule('Analytics');

        // import locale
        $this->importLocale(__DIR__ . '/Data/locale.xml');

        // add the needed rights
        $this->setModuleRights(1, $this->getModule());
        $this->setActionRights(1, $this->getModule(), 'Index');
        $this->setActionRights(1, $this->getModule(), 'Settings');
        $this->setActionRights(1, $this->getModule(), 'Reset');

        // module navigation
        $navigationMarketingId = $this->setNavigation(null, 'Marketing', 'analytics/index', null, 4);
        $this->setNavigation($navigationMarketingId, 'Analytics', 'analytics/index');

        // settings navigation
        $navigationSettingsId = $this->setNavigation(null, 'Settings');
        $navigationModulesId = $this->setNavigation($navigationSettingsId, 'Modules');
        $this->setNavigation($navigationModulesId, $this->getModule(), 'analytics/settings');

        $this->insertWidgets();
    }

    private function insertWidgets(): void
    {
        $this->insertDashboardWidget(
            'Analytics',
            'RecentVisits'
        );
        $this->insertDashboardWidget(
            'Analytics',
            'TraficSources'
        );
    }
}
