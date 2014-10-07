Feature: Features
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Features module is working properly

  @api @javascript
  Scenario: Features
    Given the "features" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/features"
    When I click "Stanford"
      # doesn't like Scenario Outline here for some reason; it re-logs in every time
    Then I should see "Feature"
    And I should see "Signature"
    And I should see "State"
    And I should see "Actions"
    And I should see "Stanford Carousel"
    And I should see "Stanford Page"
    And I should see "Stanford WYSIWYG"
    When I click "Stanford WYSIWYG"
    Then I should see "Baseline WYSIWYG Feature"
    And I should see "content_editor_text_format" in the "Content" region