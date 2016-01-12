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

  @content @live @deploy @stanford @safe @contrib @stanford
  Scenario: Stanford Person Profile
    Given I am on "people/jacob-smith"
    Then I should see a ".postcard-left" element

  @content @live  @stanford @prod
  Scenario: List of faculty
    Given I am on "people/faculty"
    Then I should see a ".views-row-first" element
    And I should see a ".views-row-lines" element
    And I should see the heading "Why I Teach" in the "First sidebar" region
    And I should see the "People" heading in the "First sidebar" region
    And I should see "This is your Why I Teach block" in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Faculty node
    Given I am on "people/faculty"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

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

  @content @deploy @stanford
  Scenario: Faculty node on profiles page
    Given I am on "people/faculty/profiles"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Faculty node on list page
    Given I am on "people/faculty/list"
    Then I should see "Jacob Smith" in the "Content Body" region

  @content @deploy  @stanford
  Scenario: Faculty node on grid page
    Given I am on "people/faculty/grid"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Faculty node on directory page
    Given I am on "people/faculty/directory"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Staff node on profiles page
    Given I am on "people/staff/profiles"
    And I click "Emily Jordan" in the "Content Body" region
    Then I should see "Department Manager" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Staff node on list page
    Given I am on "people/staff/list"
    Then I should see "Emily Jordan" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Staff node on grid page
    Given I am on "people/staff/grid"
    And I click "Emily Jordan" in the "Content Body" region
    Then I should see "Department Manager" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Staff node on directory page
    Given I am on "people/staff/directory"
    And I click "Emily Jordan" in the "Content Body" region
    Then I should see "Department Manager" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Students node on profiles page
    Given I am on "people/students/profiles"
    And I click "Haley Jackson" in the "Content Body" region
    Then I should see "B.A., Stanford University, 2012" in the "Content Body" region

  @content @deploy @stanford
  Scenario: students node on list page
    Given I am on "people/students/list"
    Then I should see "Haley Jackson" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Students node on grid page
    Given I am on "people/students/grid"
    And I click "Haley Jackson" in the "Content Body" region
    Then I should see "B.A., Stanford University, 2012" in the "Content Body" region

  @content @deploy @stanford
  Scenario: Students node on directory page
    Given I am on "people/students/directory"
    And I click "Haley Jackson" in the "Content Body" region
    Then I should see "B.A., Stanford University, 2012" in the "Content Body" region

  @content @live @prod @stanford
  Scenario: Grid layout for faculty
    Given I am on "people/faculty/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live  @stanford
  Scenario: Profiles layout for faculty
    Given I am on "people/faculty/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live @prod @stanford
  Scenario: List layout for faculty
    Given I am on "people/faculty/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live @prod @stanford
  Scenario: Directory layout for faculty
    Given I am on "people/faculty/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live  @stanford @prod
  Scenario: Grid layout for staff
    Given I am on "people/staff/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live @stanford @prod
  Scenario: Profiles layout for staff
    Given I am on "people/staff/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live  @stanford @prod
  Scenario: List layout for staff
    Given I am on "people/staff/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live  @stanford @prod
  Scenario: Directory layout for staff
    Given I am on "people/staff/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live @prod
  Scenario: Grid layout for students
    Given I am on "people/students/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live  @stanford @prod
  Scenario: Profiles layout for students
    Given I am on "people/students/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live @stanford @prod
  Scenario: List layout for students
    Given I am on "people/students/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

  @content @live @stanford @prod
  Scenario: Directory layout for students
    Given I am on "people/students/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Grid layout for professor
    Given I am on "people/professor/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Profiles layout for professor
    Given I am on "people/professor/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: List layout for professor
    Given I am on "people/professor/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Directory layout for professor
    Given I am on "people/professor/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Grid layout for department-administrator
    Given I am on "people/department-administrator/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Profiles layout for department-administrator
    Given I am on "people/department-administrator/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: List layout for department-administrator
    Given I am on "people/department-administrator/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Directory layout for department-administrator
    Given I am on "people/department-administrator/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Grid layout for graduate-students
    Given I am on "people/graduate-students/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Profiles layout for graduate-students
    Given I am on "people/graduate-students/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: List layout for graduate-students
    Given I am on "people/graduate-students/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Directory layout for graduate-students
    Given I am on "people/graduate-students/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

  @api @prod @dev @deploy @stanford @live
  Scenario: Affiliates column on Manage Person
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/manage/people"
    Then I should see 1 or more ".views-field-field-s-person-affiliation" elements