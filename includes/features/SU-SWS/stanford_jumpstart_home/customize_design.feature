Feature: Stanford Jumpstart Home Feature
  In order to ensure that the Stanford Jumpstart Home feature is configured correctly
  As an administrator
  I want to check for the existence of content that should appear

  @api @safe
  Scenario Outline: Verify items on the Customized Design Page
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text          | Region       |
    | Serra         | Content Body |
    | Lomita        | Content Body |
    | Panama        | Content Body |
    | Mayfield      | Content Body |
    | Dark          | Content Body |
    | Bright        | Content Body |
