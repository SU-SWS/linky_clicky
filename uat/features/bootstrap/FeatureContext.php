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

  // Custom steps here...

   /**
   * Sets an id for the first iframe situated in the element specified by id.
   * Needed when wanting to fill in WYSIWYG editor situated in an iframe without identifier.
   * See https://www.drupal.org/node/1826016#comment-7753999
   *
   * @Given /^the iframe in element "(?P<element>[^"]*)" has id "(?P<id>[^"]*)"$/
   */
  public function theIframeInElementHasId($element_id, $iframe_id) {
    $function = <<<JS
(function(){
  var elem = document.getElementById("$element_id");
  var iframes = elem.getElementsByTagName('iframe');
  var f = iframes[0];
  f.id = "$iframe_id";
})()
JS;
    try {
      $this->getSession()->executeScript($function);
    }
    catch(Exception $e) {
      throw new \Exception(sprintf('No iframe found in the element "%s" on the page "%s".', $element_id, $this->getSession()->getCurrentUrl()));
    }
  }

  /**
   * Fills in WYSIWYG editor with specified id.
   * See https://www.drupal.org/node/1826016#comment-7753963
   * @Given /^(?:|I )fill in "(?P<text>[^"]*)" in WYSIWYG editor "(?P<iframe>[^"]*)"$/
   */
  public function iFillInInWYSIWYGEditor($text, $iframe) {
    try {
      $this->getSession()->switchToIFrame($iframe);
    }
    catch (Exception $e) {
      throw new \Exception(sprintf("No iframe with id '%s' found on the page '%s'.", $iframe, $this->getSession()->getCurrentUrl()));
    }
      $this->getSession()->executeScript("document.body.innerHTML = '<p>".$text."</p>'");
      $this->getSession()->switchToIFrame();
  }



}
