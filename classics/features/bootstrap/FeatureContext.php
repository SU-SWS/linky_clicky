<?php

/**
 * Require our global set.
 * @todo : change this to a USE statement.
 */
require_once dirname(__FILE__) . "/../../../includes/bootstrap/SWSFeatureContext.php";

/**
 * Features context.
 */
class FeatureContext extends SWSFeatureContext {

  /**
   * This function causes the drop down. No need to add a hover step before.
   *
   * @Then /^I wait for the Classics Site Actions drop down to appear$/
   */
  public function iWaitForTheClassicsSiteActionsDropDownToAppear() {

    $this->getSession()->getDriver()->evaluateScript(
    "jQuery('#block-menu-menu-admin-shortcuts-site-action ul.nav li.first.last, #block-menu-menu-admin-shortcuts-site-action ul.nav li.expanded:first').find('ul').show().css('z-index', '1000');"
    );

    $this->getSession()->wait(3000, "jQuery('#block-menu-menu-admin-shortcuts-site-action ul.nav > ul.nav').children().length > 0");

  }


}
