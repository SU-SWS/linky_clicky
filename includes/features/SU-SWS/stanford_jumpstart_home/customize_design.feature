Feature: Stanford Jumpstart Home Feature
  In order to ensure that the Stanford Jumpstart Home feature is configured correctly
  As an administrator
  I want to check for the existence of content that should appear

  @api @safe
  Scenario: Verify items on the Customized Design Page
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see "Serra" in the "Content Body" region
    And I should see "Lomita" in the "Content Body" region
    And I should see "Panama" in the "Content Body" region
    And I should see "Mayfield" in the "Content Body" region
    And I should see "Dark" in the "Content Body" region
    And I should see "Bright" in the "Content Body" region
