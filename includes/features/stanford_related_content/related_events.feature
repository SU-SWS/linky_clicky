Feature: Related Events with SoE-JSA layouts
  In order to ensure that events for SoE-JSA are configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @javascript
  Scenario: Related Content column on Manage Stanford Events 
   Given I am logged in as a user with the "administrator" role
   When I go to "admin/manage/events"
   Then I should see 1 or more ".views-field-field-s-related-content" elements
   And I should see "Filter by related content" in the "Content Body" region
