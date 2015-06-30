Feature: Related Events with JSA layouts
  In order to ensure that related events for JSA are configured correctly
  As an end user
  I want to check for the existence of content that should appear

  Scenario: Staff layout
    Given I am on "events/upcoming-events"
    Then I should see a ".views-exposed-form" element
    And I should see "related content" in the "First sidebar" region

