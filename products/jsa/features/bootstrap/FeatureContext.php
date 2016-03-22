<?php

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

use Drupal\DrupalExtension\Context\RawDrupalContext;

use SWSMinkContext as MinkContext;
use SWSDrupalContext as DrupalContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements Context, SnippetAcceptingContext {
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct() {

    }


}
