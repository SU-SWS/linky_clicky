Feature: Stanford CAP Person Node Display
  In order to ensure that the Stanford Person CAP Profile displays properly
  As an end user
  I want to verify the CAP display of people content.


  @content @deploy @stanford
  Scenario: Faculty node
    Given I am on "people/faculty"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

  @content @live @deploy @stanford @safe @contrib @stanford
  Scenario: Stanford Person CAP node page
    Given I am on "people/jacob-smith"
    Then I should not see a ".postcard-left" element

  @content @deploy @stanford
  Scenario: Faculty node on directory page and node page
    Given I am on "people/faculty/directory"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Staff node on profiles page and node page
    Given I am on "people/staff/profiles"
    And I click "Emily Jordan" in the "Content Body" region
    Then I should see "Department Manager" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Staff node on grid page and node page
    Given I am on "people/staff/grid"
    And I click "Emily Jordan" in the "Content Body" region
    Then I should see "Department Manager" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Staff node on directory page and node page
    Given I am on "people/staff/directory"
    And I click "Emily Jordan" in the "Content Body" region
    Then I should see "Department Manager" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Students node on profiles page and node page
    Given I am on "people/students/profiles"
    And I click "Haley Jackson" in the "Content Body" region
    Then I should see "B.A., Stanford University, 2012" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Students node on grid page and node page
    Given I am on "people/students/grid"
    And I click "Haley Jackson" in the "Content Body" region
    Then I should see "B.A., Stanford University, 2012" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Students node on directory page and node page
    Given I am on "people/students/directory"
    And I click "Haley Jackson" in the "Content Body" region
    Then I should see "B.A., Stanford University, 2012" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Faculty node on profiles page
    Given I am on "people/faculty/profiles"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region