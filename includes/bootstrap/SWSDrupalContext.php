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
   * Track changed variables so we can revert them back after we are done.
   *
   * @var array
   */
  private $changedVariables = array();

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
    // If we can find a link, that means we're using Javascript.
    if (!is_null($localuserlogin)) {
      // click on the Local User Login link to expose the user name and password fields
      // See Behat\Mink\Element\TraversableElement::clickLink
      $element->clickLink("Local User Login");
      // Since we're using Javascript, we can use wait().
      $this->getSession()->wait(5000, '(typeof(jQuery)=="undefined" || (0 === jQuery.active && 0 === jQuery(\':animated\').length))');
    }
    // Shamelessly stolen from iWaitForAjaxToFinish().
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
   * @When I track variable :arg1
   */
  public function iTrackVariable($arg1) {
    $value = $this->variableGet($arg1);
    $this->trackChangedVariable($arg1, $value);
  }

  /**
   * Track the original state of a changed variable.
   */
  protected function trackChangedVariable($name, $value) {
    if (!key_exists($name, $this->changedVariables)) {
      $this->changedVariables[$name] = $value;
    }
  }

  /**
   * Set changed variables to their original state.
   *
   * @AfterScenario
   */
  public function resetVariables() {
    foreach ($this->changedVariables as $var => $value) {
      if (!is_null($value)) {
        // If the original value was something other than NULL, set it back.
        $this->variableSet($var, $value);
      }
      else {
        // Unset the variable if it didn't exist before.
        $this->variableDel($var);
      }
    }
  }

  /**
   * [variableGet description]
   * @param  [type] $arg [description]
   * @return [type]      [description]
   */
  protected function variableGet($arg) {
    $driver = $this->getDriver();
    $arguments = array($arg);
    $options = array(
      'exact' => TRUE,
      'format' => "json",
    );

    try {
      $json = $driver->drush("vget", $arguments, $options);
    } catch (RuntimeException $e) {
      return NULL;
    }

    $result = json_decode($json);

    return $result;
  }

  /**
   * [variableSet description]
   * @param  [type] $arg [description]
   * @return [type]      [description]
   */
  protected function variableSet($name, $arg) {
    $driver = $this->getDriver();
    $options = array(
      'exact' => TRUE,
      'format' => "json",
    );
    $value = "\"" . addslashes(json_encode($arg)) . "\"";
    $arguments = array($name, $value);
    $driver->drush("vset", $arguments, $options);
  }

  /**
   * [variableGet description]
   * @param  [type] $name [description]
   * @return [type]      [description]
   */
  protected function variableDel($name) {
    $driver = $this->getDriver();
    $options = array(
      'exact' => TRUE,
      'yes' => TRUE,
    );
    $arguments = array($name);
    $driver->drush("vdel", $arguments, $options);
  }

  /**
   * Deletes the URL alias provided.
   *
   * @param string $path_alias
   *   The alias to delete (this is the alias entered by the user or generated
   *   by pathauto, not the system path)
   *
   * @Then I cleanup the :path_alias alias
   */
  public function cleanupTheAlias($path_alias) {
    $driver = $this->getDriver();
    $statement = "echo drupal_get_normal_path('" . $path_alias . "')";
    $raw_path =  $driver->drush("php-eval \"" . $statement . "\"");

    $statement_delete = "path_delete(array('source' => '" . $raw_path . "'))";
    $deleted = $driver->drush("php-eval \"" . $statement_delete . "\"");
  }

}
