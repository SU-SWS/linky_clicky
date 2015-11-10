Feature: Stanford Private Page
  In order to ensure that the Private Pages Section is viewable
  As an end user
  I want to check for the existence of the Internal Login button and Private Pages Section

  @api @deploy @jse @live @prod @safe @contrib @stanford
  Scenario: Check that the Internal Login button directs to the Private Pages Section
    Given I am logged in as a user with the "administrator" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    Then I should see "Private Pages" in the "First sidebar" region
    And I should see a ".block-menu" element
    And I should see "Private Pages" in the "Content Head" region


  @api @deploy @jse @safe @contrib @stanford
  Scenario: Check site member can view Private Pages Section
    Given I am logged in as a user with the "site member" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    Then I should see "Private Pages" in the "First sidebar" region
    And I should see a ".block-menu" element
    And I should see "Private Pages" in the "Content Head" region

  @api @deploy @live @prod @jse @safe @contrib @stanford
  Scenario: Check site member can view Private Pages Section
    Given I am logged in as a user with the "site member" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    And I should see a ".block-menu" element


  @api @deploy @jse @safe @contrib @stanford
  Scenario: On deploy, check site member can view the For Faculty page
    Given I am logged in as a user with the "site member" role
    Given I am on the private/for-faculty
    And I click "Internal Login" in the "Footer" region
    Then I should see "Private Pages" in the "First sidebar" region
    And I should see a ".block-menu" element
    And I should see "Private Pages" in the "Content Head" region