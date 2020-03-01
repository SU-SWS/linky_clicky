@contrib
Feature: Node Convert
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Node Convert module is working properly

  @api @javascript @content @dev @destructive
  Scenario: Node Convert
    Given the "node_convert" module is enabled
    # Testing patch in https://www.drupal.org/project/node_convert/issues/2394047
    And the "xmlsitemap" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    When I am on "node/add/page"
    And I enter "Node Convert Test" for "Title"
    And I select "Plain text" from "Text format"
    And I wait for AJAX to finish
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit enim labore shankle tail in doner. Pork belly occaecat dolor turkey nulla do et. Jerky corned beef frankfurter, brisket jowl enim laborum ex ut turkey. Consequat filet mignon ullamco ground round pancetta sunt shank, adipisicing prosciutto boudin minim irure est ea commodo" for "Body"
    And I press the "Save" button
    And I should see "Basic page Node Convert Test has been created"
    When I click "Convert"
    And I select "Article" from "To what content type should this node be converted"
    And I press the "Next" button
    And I select "body" from "body should be inserted into"
    And I press the "Convert" button
    Then I should see "has been converted successfully"
