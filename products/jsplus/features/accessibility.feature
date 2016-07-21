Feature: Verifies that the Accessibility text appears
  In order to ensure that JSLPUS site has the accessibility content
  As an end user
  I want to check for the accessibility content

  @live
  Scenario: See the Web Accessibility text
    Given I am on "about/contact"
    Then I should see the heading "Web Accessibility" in the "Content Body" region
    And I should see the text "Stanford University is committed to providing an online environment that is accessible" in the "Main Content" region
    And I should see the link "Learn more about accessibility at Stanford and report accessibility issues" in the "Main Content" region
