Feature: Stanford testimonial bean Type
  In order to ensure that the testimonial bean exists
  As an administrator
  I want to check that the Stanford testimonial bean types module is working correctly

  Background:
    Given I am logged in as a user with the "administrator" role

  @api @safe
  Scenario: Stanford testimonial type exists
    And I am on "block/add"
    Then I should see the link "stanford_testimonial_block" in the "Content Body" region
