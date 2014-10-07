Feature: Rules
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Rules module is working properly

  @api @javascript
  Scenario: Rules
    Given the "rules_admin" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/workflow/rules/reaction/add"
    When I enter "Send Email When Pages Are Viewed" for "Name"
    And I select "Content is viewed" from "React on event"
    And I wait 3 seconds
    And I select "Basic page" from "Restrict by type"
    And I press the "Save" button
    Then I should see "Your changes have been saved"
    When I click "Add action"
    And I select "Send mail" from "Select the action to add"
    And I wait 3 seconds
    And I enter "no-reply@stanford.edu" for "edit-parameter-to-settings-to"
    And I enter "Page has been viewed" for "edit-parameter-subject-settings-subject"
    And I enter "The page has been viewed" for "edit-parameter-message-settings-message"
    And I press the "Save" button
    Then I should see "Your changes have been saved"
    When I am on "node/add/page"
    And I enter "Rules Test" for "Title"
    And I select "Plain text" from "Text format"
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit enim labore shankle tail in doner. Pork belly occaecat dolor turkey nulla do et. Jerky corned beef frankfurter, brisket jowl enim laborum ex ut turkey. Consequat filet mignon ullamco ground round pancetta sunt shank, adipisicing prosciutto boudin minim irure est ea commodo" for "Body"
    And I press the "Save" button
    Then I should see "Basic page Rules Test has been created"
    When I am on "admin/reports/dblog"
    Then I should see "Successfully sent email"
    When I am on "admin/config/workflow/rules"
    And I click "delete" in the "Send Email When Pages Are Viewed" row
    And I press the "Confirm" button
    Then I should see "Deleted reaction rule Send Email When Pages Are Viewed"