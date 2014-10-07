Feature: Node Clone
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Node Clone module is working properly

  @api @javascript
  Scenario: Node Clone
    Given I am logged in as a user with the "administrator" role
      # for some reason it pukes when trying to use the "Given the 'clone' module is enabled" step, so going through the UI
    And I am on "admin/modules"
    And I check the box "edit-modules-other-clone-enable"
    And I press the "Save configuration" button
    When I am on "node/add/page"
    And I enter "Node Clone Test" for "Title"
    And I select "Plain text" from "Text format"
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit enim labore shankle tail in doner. Pork belly occaecat dolor turkey nulla do et. Jerky corned beef frankfurter, brisket jowl enim laborum ex ut turkey. Consequat filet mignon ullamco ground round pancetta sunt shank, adipisicing prosciutto boudin minim irure est ea commodo" for "Body"
    And I press the "Save" button
    And I should see "Basic page Node Clone Test has been created"
    When I click "Clone content"
    Then the "Title" field should contain "Clone of Node Clone Test"
    When I press the "Save" button
    Then I should see "Bacon ipsum dolor sit amet deserunt fatback" in the "Content Body" region
    And I should see "brisket jowl enim laborum ex ut turkey" in the "Content Body" region