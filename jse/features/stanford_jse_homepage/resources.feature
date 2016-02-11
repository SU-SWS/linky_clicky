Feature: Resources Section
  In order to ensure that the Jumpstart Engineering Resources section content is visible
  As an end user
  I want to check for the existence of page and menu content

  @content @deploy @safe
  Scenario: Check that the correct menu items exist in research section of a newly deployed site.
    Given I am on "research"
    Then I should see "This is your Resources" in the "Content Body" region
    Then I should see "Resources Overview" in the "First sidebar" region
    Then I should see "Resources Example" in the "First sidebar" region
    Then I should see "Project Example" in the "First sidebar" region

  @content @deploy @safe
  Scenario: Check that the correct pages exist in research section of a newly deployed site.
    Given I am on the homepage
    And I click on "Resources Overview" in the "Main Navigation" region
    Then I should see "This is your Resources" in the "Content Body" region
    And I click "Software Resources" in the "First sidebar" region
    Then I should see "This is an example of a software resources page" in the "Content Body" region
    And I click "References" in the "First sidebar" region
    Then I should see "This is an example of a references page" in the "Content Body" region
