Feature: Stanford Jumpstart Home Feature
  In order to ensure that the Stanford Jumpstart Home feature is configured correctly for JSE
  As an end user
  I want to check for the existence of content that should appear

  @api @safe @javascript
  Scenario: Verify items on the Customized Design Page
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    And I wait 5 seconds
    Then I should see "Hoover" in the "Content Body" region
    And I should see "Morris" in the "Content Body" region
    And I should see "Terman" in the "Content Body" region
    And I should see "Pettit" in the "Content Body" region
    And I should see "Light" in the "Content Body" region
    And I should see "Plain" in the "Content Body" region
    And I should see "Rich" in the "Content Body" region
    And I should see "High Contrast" in the "Content Body" region
    And I should see "Cardinal" in the "Content Body" region
    And I should see "Sans Serif" in the "Content Body" region
    And I should see "Serif" in the "Content Body" region
    And I should see "Slab Serif" in the "Content Body" region
