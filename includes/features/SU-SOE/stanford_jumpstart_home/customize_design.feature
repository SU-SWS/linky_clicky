Feature: Stanford Jumpstart Home Feature
  In order to ensure that the Stanford Jumpstart Home feature is configured correctly for JSE
  As an end user
  I want to check for the existence of content that should appear

  @api @safe
  Scenario Outline: Verify items on the Customized Design Page
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see "Hoover" in the "Content Body" region
    Then I should see "Morris" in the "Content Body" region
    Then I should see "Terman" in the "Content Body" region
    Then I should see "Pettit" in the "Content Body" region
    Then I should see "Light" in the "Content Body" region
    Then I should see "Plain" in the "Content Body" region
    Then I should see "Rich" in the "Content Body" region
    Then I should see "High Contrast" in the "Content Body" region
    Then I should see "Cardinal" in the "Content Body" region
    Then I should see "Sans Serif" in the "Content Body" region
    Then I should see "Serif" in the "Content Body" region
    Then I should see "Slab Serif" in the "Content Body" region

  @api @safe
  Scenario Outline: Verify items on the Customized Design Page
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should not see "Serra" in the "Content Body" region
    Then I should not see "Lomita" in the "Content Body" region
    Then I should not see "Panama" in the "Content Body" region
    Then I should not see "Mayfield" in the "Content Body" region
    Then I should not see "Dark" in the "Content Body" region
    Then I should not see "Bright" in the "Content Body" region
