Feature: Node Clone
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Node Clone module is working properly

@api
Scenario: Node Clone
  Given the "node_clone" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "node/add/page"
  When I enter "Node Clone Test" for "Title"
    And I select "Plain text" from "Text format"
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit enim labore shankle tail in doner. Pork belly occaecat dolor turkey nulla do et. Jerky corned beef frankfurter, brisket jowl enim laborum ex ut turkey. Consequat filet mignon ullamco ground round pancetta sunt shank, adipisicing prosciutto boudin minim irure est ea commodo" for "Body"
    And I press the "Save" button
    And I should see "Basic page Node Clone Test has been created"
  When I click "Clone content"
  Then the "Title" field should contain "Clone of Node Clone Test"
  When I press the "Save" button
  Then I should see "Bacon ipsum dolor sit amet deserunt fatback" in the "Content Body" region
    And I should see "brisket jowl enim laborum ex ut turkey" in the "Content Body" region