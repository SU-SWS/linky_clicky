Feature: Stanford Private Page login
  In order to ensure that the Private Pages Section is viewable
  As an administrator, site owner, or editor
  I want to be able to login to the private page section

  @api @deploy
  Scenario: Check that the Internal Login button directs to the Private Pages Section
    Given I am logged in as a user with the "site member" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    Then I should see "Private Pages" in the "First sidebar" region
    And I should see "Private Pages" in the "Content Head" region