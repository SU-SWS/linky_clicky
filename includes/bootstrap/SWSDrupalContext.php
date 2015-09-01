<?php
/**
 * @file
 */

use Behat\Behat\Context\Context,
    Behat\Behat\Context\SnippetAcceptingContext,
    Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Context\TranslatableContext,
    Behat\Behat\Exception\PendingException,
    Behat\Behat\Hook\Scope\BeforeScenarioScope;

use Behat\Mink\Exception\ExpectationException,
    Behat\Mink\Session;

use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

use Drupal\Component\Utility\Random;

use Drupal\DrupalExtension\Context\RawDrupalContext,
    Drupal\DrupalExtension\Context\DrupalContext as DrupalContext,
    Drupal\DrupalExtension\Context\MinkContext;

/**
 * Features context.
 */
class SWSDrupalContext extends DrupalContext implements Context, SnippetAcceptingContext {

  /**
   * Override DrupalContext::login
   * The WebAuth Module for Drupal (WMD) hides the user login form in a collapsible fieldset.
   * We need to open that fieldset up to be able to fill out the fields
   */
  public function login() {
    // Check if logged in.
    if ($this->loggedIn()) {
      $this->logout();
    }

    if (!$this->user) {
      throw new \Exception('Tried to login without a user.');
    }

    $this->getSession()->visit($this->locatePath('/user'));
    $element = $this->getSession()->getPage();
    // find the Local User Login link - it's only findable in the browser, with Javascript
    // See Behat\Mink\Element\TraversableElement::findLink
    $localuserlogin = $element->findLink("Local User Login");
    if (!is_null($localuserlogin)) {
      // click on the Local User Login link to expose the user name and password fields
      // See Behat\Mink\Element\TraversableElement::clickLink
      $element->clickLink("Local User Login");
    }
    $element->fillField($this->getDrupalText('username_field'), $this->user->name);
    $element->fillField($this->getDrupalText('password_field'), $this->user->pass);
    $submit = $element->findButton($this->getDrupalText('log_in'));
    if (empty($submit)) {
      throw new \Exception(sprintf("No submit button at %s", $this->getSession()->getCurrentUrl()));
    }

    // Log in.
    $submit->click();

    if (!$this->loggedIn()) {
      throw new \Exception(sprintf("Failed to log in as user '%s' with role '%s'", $this->user->name, $this->user->role));
    }
  }


}
