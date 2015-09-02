<?php

use Behat\Behat\Context\Context,
    Behat\Behat\Context\SnippetAcceptingContext,
    Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    // Behat\Behat\Context\MinkContext,
    Behat\Behat\Context\TranslatableContext,
    Behat\Behat\Exception\PendingException,
    Behat\Mink\Exception\ExpectationException,
    Behat\Mink\Session;

use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

use Drupal\Component\Utility\Random;
    // Drupal\DrupalExtension\Context\DrupalContext;

use SWSMinkContext as MinkContext;
use SWSDrupalContext as DrupalContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext implements Context, SnippetAcceptingContext {

  /**
   * @var \Drupal\DrupalExtension\Context\DrupalContext
   */
  protected $drupalContext;

  /**
   * @var \Drupal\DrupalExtension\Context\MinkContext
   */
  protected $minkContext;

  /**
   * @BeforeScenario
   */
  public function gatherContexts(BeforeScenarioScope $scope) {
    $environment = $scope->getEnvironment();
    $this->drupalContext = $environment->getContext('SWSDrupalContext');
    $this->minkContext = $environment->getContext('SWSMinkContext');
  }



  /**
   * Find the default value of a select element.
   * See https://github.com/Behat/Mink/issues/300
   * @Then /^I want to validate select field option "([^"]*)" default is "([^"]*)"$/
   */
  public function iWantToValidateSelectOptionDefaultIs($locator, $defaultValue) {
    $mink = $this->minkContext;
    $optionElement = $mink->getSession()->getPage()->find('xpath', '//select[@name="' . $locator . '"]/option[@selected]');
    if (!$optionElement) {
      throw new Exception('Could not find a select element with the "name" attribute of ' . $locator);
    }

    $selectedDefaultValue = (string)$optionElement->getText();
    if ($selectedDefaultValue != $defaultValue) {
      throw new Exception('Select option default value: "' . $selectedDefaultValue . '" does not match given: "' . $defaultValue . '"');
    }
  }


}



