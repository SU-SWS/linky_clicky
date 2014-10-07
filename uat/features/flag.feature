Feature: Flag
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Flag module is working properly


  @api @javascript
  Scenario: Flag
    Given the "flag" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/flags/add"
    And I press the "Continue" button
    When I enter "[random]" for "Title"
    And I press the "Save flag" button
    Then I should see "Flag [random:1] has been saved"
    When I am on "node/add/page"
    And I enter "Flag Test" for "Title"
    And I select "Plain text" from "Text format"
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit enim labore shankle tail in doner. Pork belly occaecat dolor turkey nulla do et. Jerky corned beef frankfurter, brisket jowl enim laborum ex ut turkey. Consequat filet mignon ullamco ground round pancetta sunt shank, adipisicing prosciutto boudin minim irure est ea commodo" for "Body"
    And I press the "Save" button
    And I should see "Basic page Flag Test has been created"
    And I should see "Flag this item"
