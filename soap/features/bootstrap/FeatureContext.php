<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

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

//
// Place your definition and hook methods here:
//
//    /**
//     * @Given /^I have done something with "([^"]*)"$/
//     */
//    public function iHaveDoneSomethingWith($argument)
//    {
//        doSomethingWith($argument);
//    }
//

  /**
   * @Given /^the "([^"]*)" module is enabled$/
   */
  public function theModuleIsEnabled($arg1) {
    $this->invoke_code('module_enable', array('array(\'$arg1\')'), TRUE);
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

}
