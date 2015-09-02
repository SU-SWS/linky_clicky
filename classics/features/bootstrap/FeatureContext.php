<?php

use Behat\Behat\Context\Context,
    Behat\Behat\Context\SnippetAcceptingContext,
    Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Context\MinkContext,
    Behat\Behat\Context\TranslatableContext,
    Behat\Behat\Exception\PendingException,
    Behat\Mink\Exception\ExpectationException,
    Behat\Mink\Session;

use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

use Drupal\Component\Utility\Random,
    Drupal\DrupalExtension\Context\DrupalContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext implements Context, SnippetAcceptingContext {
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct() {

    }

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
