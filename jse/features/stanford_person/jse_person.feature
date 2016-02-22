Feature: Stanford Person
  In order to ensure that the Stanford Person content type and supporting functionality works.
  As an end user and administrator
  I want to check for the creation and display of people content.

  @api @javascript @contrib @stanford @destructive
  Scenario: Stanford Person
    Given the "stanford_person" module is enabled
    And the "entity_token" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-person"
    When I enter "Leland" for "First name *"
    And I enter "Stanford" for "Last Name *"
    And I enter "Leland Stanford" for "Display Name"
    And I press the "Save" button
    Then I should be on "people/leland-stanford"
    And I should see "Person Leland Stanford has been created"

  @content @live  @stanford @deploy
  Scenario: List of faculty
    Given I am on "people/faculty"
    Then I should see a ".views-row-first" element
    And I should see a ".views-row-lines" element
    And I should not see "Why I Teach" in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Faculty taxonomy filter
    Given I am on "people/faculty"
    When I select "Professor" from "Filter by faculty status"
    And I press "Go"
    Then I should see "Jacob Smith" in the "Content Body" region
    And I should not see "Jane Doe" in the "Content Body" region

  @content @live @stanford @prod
  Scenario: List of staff
    Given I am on "people/staff"
    Then I should see a ".views-row-first" element
    And I should see a ".views-row-lines" element

  @content @live @stanford @prod
  Scenario: List of students
    Given I am on "people/students"
    Then I should see a ".views-row-first" element
    And I should see a ".views-row-lines" element

  @content @live @stanford
  Scenario: Students layout
    Given I am on "people/students"
    Then I should see a ".views-exposed-form" element
    And I should see "People" in the "First sidebar" region

  @content @live  @stanford
  Scenario: Staff layout: exposed filter
    Given I am on "people/staff"
    Then I should see a ".views-exposed-form" element
    And I should see "People" in the "First sidebar" region
    And I should see "Contact and Location" in the "First sidebar" region

  @api @live @stanford
  Scenario: Affiliates column on Manage Person
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/manage/people"
    Then I should see 1 or more ".views-field-field-s-person-affiliation" elements

  @api @prod @dev @deploy @stanford @live
  Scenario: Affiliates column on Manage Person
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/manage/people"
    Then I should see 1 or more ".views-field-field-s-person-affiliation" elements


  @content @deploy @safe
  Scenario Outline: Check that the correct headings exist on people page of a newly deployed site.
    Given I am on the homepage
    And I click "People" in the "Main Navigation" region
    And I should see the "People" heading in the "Content Head" region
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header   | Region       |
  | Faculty  | Content Body |
  | Students | Content Body |
  | Staff    | Content Body |


