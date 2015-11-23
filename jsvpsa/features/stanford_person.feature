Feature: Stanford Person
  In order to ensure that the Stanford Person content type and supporting functionality works.
  As an end user and administrator
  I want to check for both the creation and display of the person content.

  @api @javascript
  Scenario: Stanford Person
    Given the "stanford_person" module is enabled
    And the "entity_token" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-person"
    When I enter "Leland" for "First name *"
    And I enter "Stanford" for "Last Name *"
    And I press the "Save" button
    Then I should be on "people/leland-stanford"
    And I should see "Person Leland Stanford has been created"
    
  @content @live  @stanford
  Scenario: Stanford Person Styles and Layout
    Given I am on "people"
    Then I should see a ".person-details:before" element
    And I should see a ".views-grid-four" element
    And I should see the heading "People" in the "Content Head" region
    And I should see the heading "Jacob Smith" in the "Content Body" region
  
  @content @live  @stanford
  Scenario: Stanford Person Profile
    Given I am on "people/jacob-smith"
    Then I should see a ".postcard-left" element
    And I should see the heading "Jacob Smith I Teach" in the "Content Body" region
