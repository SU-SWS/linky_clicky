Feature: Contact
  In order to ensure that the Jumpstart website Contact content is visible
  As an end user
  I want to check for the existence of page and block content

  Scenario: Viewing information on the Contact page
    Given I am on "about/contact"
    # See the Accessibility contnent
    Then I should see the heading "Web Accessibility" in the "Content Body" region
    And I should see "Stanford University is committed to providing an online environment that is accessible to everyone, including individuals with disabilities" in the "Content Body" region
    And I should see "This is your Contact page" in the "Content Body" region
    And I should see the heading "About" in the "First sidebar" region
