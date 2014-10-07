Feature: Content Access
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Content Access module is working properly

  @api @javascript
  Scenario: Content Access
    Given the "content_access" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/reports/status/rebuild"
    And I press the "Rebuild permissions" button
    Then I should see " The content access permissions have been rebuilt"
    When I am on "admin/structure/types/manage/page/access"
    And I check the box "edit-per-node"
    And I press the "Submit" button
    Then I should see "Permissions have been successfully rebuilt for the content type Basic page"
    And I should see "Your changes have been saved"
    When I am on "node/add/page"
    And I enter "Content Access Test" for "Title"
    And I select "Plain text" from "Text format"
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit enim labore shankle tail in doner. Pork belly occaecat dolor turkey nulla do et. Jerky corned beef frankfurter, brisket jowl enim laborum ex ut turkey. Consequat filet mignon ullamco ground round pancetta sunt shank, adipisicing prosciutto boudin minim irure est ea commodo" for "Body"
    And I press the "Save" button
    And I should see "Basic page Content Access Test has been created"
    When I click "Access control"
    And I uncheck the box "edit-view-1"
    And I press the "Submit" button
    Then I should see "Your changes have been saved"
    When I am an anonymous user
    And I am on "content-access-test"
    Then I should see "WebLogin"
    And I should see "SUNet ID"
