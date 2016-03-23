Feature: Stanford Private Page
  In order to ensure that the Private Pages Section is viewable
  As an administrator, site owner, or editor
  I want to be able to login to the private page section

  @api @deploy @prod @safe @stanford
  Scenario: Check that the Internal Login button directs to the Private Pages Section
    Given I am logged in as a user with the "administrator" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    Then I should see "Private Pages" in the "First sidebar" region
    # TODO: The .block-menu selector is super generic. This could be better.
    And I should see a ".block-menu" element
    And I should see "Private Pages" in the "Content Head" region