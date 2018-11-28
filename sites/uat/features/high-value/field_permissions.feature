@contrib
Feature: Field Permissions
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Field Permissions module is working properly

  @api @javascript @dev @destructive @content
  Scenario: Field Permissions
    Given the "field_permissions" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    # This may have to change as article and basic page are being removed from our products.
    And I am on "admin/structure/types/manage/article/fields/body"
    And I select the "Private (only author and administrators can edit and view)" radio button
    And I press the "Save settings" button
    Then I should see "Saved Body configuration"
    # This may have to change as article and basic page are being removed from our products.
    When I go to "node/add/article"
    And I enter "Field Permissions Test" for "Title"
    And I select "Plain text" from "Text format"
    And I wait for AJAX to finish
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit enim labore shankle tail in doner. Pork belly occaecat dolor turkey nulla do et. Jerky corned beef frankfurter, brisket jowl enim laborum ex ut turkey. Consequat filet mignon ullamco ground round pancetta sunt shank, adipisicing prosciutto boudin minim irure est ea commodo" for "Body"
    And I press the "Save" button
    Then I should be on "field-permissions-test"
    And I should see "Bacon ipsum dolor sit amet deserunt fatback"
    Given I am an anonymous user
    And I am on "field-permissions-test"
    Then I should not see "Bacon ipsum dolor sit amet deserunt fatback"
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/article/fields/body"
    And I select the "Public (author and administrators can edit, everyone can view)" radio button
    And I press the "Save settings" button
    Then I should see "Saved Body configuration"
    When I go to "field-permissions-test?foo=bar"
    Then I should see "Bacon ipsum dolor sit amet deserunt fatback"
    Given I am an anonymous user
    And I am on "field-permissions-test?foo=bar"
    Then I should see "Bacon ipsum dolor sit amet deserunt fatback"
