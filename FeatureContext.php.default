<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException,
    Behat\Mink\Exception\ExpectationException,
    Behat\Mink\Session;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;
use Drupal\Component\Utility\Random;

//
// Require 3rd-party libraries here:
//
//   require_once 'PHPUnit/Autoload.php';
//   require_once 'PHPUnit/Framework/Assert/Functions.php';
//

/**
 * Features context.
 */
// class FeatureContext extends BehatContext
class FeatureContext extends Drupal\DrupalExtension\Context\DrupalContext
{
    /**
     * Initializes context.
     * Every scenario gets its own context object.
     *
     * @param array $parameters context parameters (set them up through behat.yml)
     */
    public function __construct(array $parameters)
    {
        // Initialize your context here
    }


  /**
   * @Given /^the "([^"]*)" module is enabled$/
   */
  public function theModuleIsEnabled($arg1) {
    if(!$this->invoke_code('module_enable', array('array("'. $arg1 . '")'), TRUE)) {
      throw new PendingException();
    }
  }

  /**
   * @Given /^the "([^"]*)" module is disabled$/
   */
  public function theModuleIsDisabled($arg1) {
    if(!$this->invoke_code('module_disable', array('array("'. $arg1 . '")'), TRUE)) {
      throw new PendingException();
    }
  }

  /**
   * @Given /^I wait (\d+) second(s)?$/
   */
  public function iWaitSeconds($seconds) {
    $this->getSession()->wait(1000*$seconds);
  }

  /**
  * Invoking a php code with drush.
  *
  * @param $function
  * The function name to invoke.
  * @param $arguments
  * Array contain the arguments for function.
  * @param $debug
  * Set as TRUE/FALSE to display the output the function print on the screen.
  * See https://github.com/openscholar/openscholar/blob/SCHOLAR-3.x/openscholar/behat/features/bootstrap/FeatureContext.php#L658
  */
  private function invoke_code($function, $arguments = NULL, $debug = FALSE) {
    $code = !empty($arguments) ? "$function(" . implode(',', $arguments) . ");" : "$function();";

    $output = $this->getDriver()->drush("php-eval \"{$code}\"");

    if ($debug) {
      print_r($output);
    }

    return $output;
  }

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

  /**
   * Override MinkContext::fixStepArgument().
   *
   * Make it possible to use [random].
   * If you want to use the previous random value [random:1].
   * See http://cgit.drupalcode.org/panopoly/tree/tests/behat/features/bootstrap/FeatureContext.php?id=18a2ccbdad8c8064aa36f8c57ae7416ee018b92f
   */
  protected function fixStepArgument($argument) {
    $argument = str_replace('\\"', '"', $argument);

    // Token replace the argument.
    static $random = array();
    for ($start = 0; ($start = strpos($argument, '[', $start)) !== FALSE; ) {
      $end = strpos($argument, ']', $start);
      if ($end === FALSE) {
        break;
      }
      $name = substr($argument, $start + 1, $end - $start - 1);
      if ($name == 'random') {
        $randomname = $this->getDrupal()->random->name(8);
        $randomname = strtolower($randomname);
        $this->vars[$name] = $randomname;
        $random[] = $this->vars[$name];
      }
      // In order to test previous random values stored in the form,
      // suppport random:n, where n is the number or random's ago
      // to use, i.e., random:1 is the previous random value.
      elseif (substr($name, 0, 7) == 'random:') {
        $num = substr($name, 7);
        if (is_numeric($num) && $num <= count($random)) {
          $this->vars[$name] = $random[count($random) - $num];
        }
      }
      if (isset($this->vars[$name])) {
        $argument = substr_replace($argument, $this->vars[$name], $start, $end - $start + 1);
        $start += strlen($this->vars[$name]);
      }
      else {
        $start = $end + 1;
      }
    }

    return $argument;
  }

  /**
   * @Then /^I should see (\d+) or more "([^"]*)" elements$/
   */
  public function iShouldSeeOrMoreElements($num, $element) {

    $container = $this->getSession()->getPage();
    $nodes = $container->findAll('css', $element);

    if (intval($num) > count($nodes)) {
      $session = $this->getSession();
      $message = sprintf('%d "%s" elements found when there should be a minimum of %d.', count($nodes), $element, $num);
      throw new ExpectationException($message, $session);
    }

  }

    /**
   * @Then /^I should see (\d+) or fewer "([^"]*)" elements$/
   */
  public function iShouldSeeOrFewerElements($num, $element) {
    $container = $this->getSession()->getPage();
    $nodes = $container->findAll('css', $element);

    if (intval($num) < count($nodes)) {
      $session = $this->getSession();
      $message = sprintf('%d "%s" elements found when there should be a maximum of %d.', count($nodes), $element, $num);
      throw new ExpectationException($message, $session);
    }
  }

  /**
   * @When /^I hover over the element "([^"]*)"$/
   */
  public function iHoverOverTheElement($locator) {
    $session = $this->getSession(); // get the mink session
    $element = $session->getPage()->find('css', $locator); // runs the actual query and returns the element

    // errors must not pass silently
    if (null === $element) {
      throw new \InvalidArgumentException(sprintf('Could not evaluate CSS selector: "%s"', $locator));
    }

    // ok, let's hover it
    $element->mouseOver();
  }

  /**
   * Click some text
   *
   * @When /^I click on the text "([^"]*)"$/
   */
  public function iClickOnTheText($text) {
    $session = $this->getSession();
    $element = $session->getPage()->find(
      'xpath',
      $session->getSelectorsHandler()->selectorToXpath('xpath', '*//*[text()="'. $text .'"]')
    );
    if (null === $element) {
      throw new \InvalidArgumentException(sprintf('Cannot find text: "%s"', $text));
    }

    $element->click();
  }

}
