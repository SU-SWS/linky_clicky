Feature: People
  In order to ensure that the Jumpstart Academics website people are viewable
  As an end user
  I want to check for the existence of people content

   @live
  Scenario: List of faculty
    Given I am on "people/faculty"
    Then I should see a ".views-row-first" element
    And I should see a ".views-row-lines" element
    And I should see the heading "Why I Teach" in the "First sidebar" region
    And I should see the "People" heading in the "First sidebar" region
    And I should see "This is your Why I Teach block" in the "First sidebar" region

   @deploy
  Scenario: Faculty node
    Given I am on "people/faculty"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

   @deploy
  Scenario: Faculty taxonomy filter
    Given I am on "people/faculty"
    When I select "Professor" from "Filter by faculty status"
    And I press "Go"
    Then I should see "Jacob Smith" in the "Content Body" region
    And I should not see "Jane Doe" in the "Content Body" region

   @live 
  Scenario: List of staff
    Given I am on "people/staff"
    Then I should see a ".views-row-first" element
    And I should see a ".views-row-lines" element

   @live
  Scenario: List of students
    Given I am on "people/students"
    Then I should see a ".views-row-first" element
    And I should see a ".views-row-lines" element

   @live
  Scenario: Students layout
    Given I am on "people/students"
    Then I should see a ".views-exposed-form" element
    And I should see "People" in the "First sidebar" region

   @live
  Scenario: Staff layout: exposed filter
    Given I am on "people/staff"
    Then I should see a ".views-exposed-form" element
    And I should see "People" in the "First sidebar" region
    And I should see "Contact and Location" in the "First sidebar" region

  @api @live
  Scenario: Affiliates column on Manage Person
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/manage/people"
    Then I should see 1 or more ".views-field-field-s-person-affiliation" elements

   @deploy
  Scenario: Faculty node on profiles page
    Given I am on "people/faculty/profiles"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

   @deploy
  Scenario: Faculty node on list page
    Given I am on "people/faculty/list"
    Then I should see "Jacob Smith" in the "Content Body" region

   @deploy
  Scenario: Faculty node on grid page
    Given I am on "people/faculty/grid"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

   @deploy
  Scenario: Faculty node on directory page
    Given I am on "people/faculty/directory"
    And I click "Jacob Smith" in the "Content Body" region
    Then I should see "Professor of English" in the "Content Body" region

   @deploy
  Scenario: Staff node on profiles page
    Given I am on "people/staff/profiles"
    And I click "Emily Jordan" in the "Content Body" region
    Then I should see "Department Manager" in the "Content Body" region

   @deploy
  Scenario: Staff node on list page
    Given I am on "people/staff/list"
    Then I should see "Emily Jordan" in the "Content Body" region

   @deploy
  Scenario: Staff node on grid page
    Given I am on "people/staff/grid"
    And I click "Emily Jordan" in the "Content Body" region
    Then I should see "Department Manager" in the "Content Body" region

   @deploy
  Scenario: Staff node on directory page
    Given I am on "people/staff/directory"
    And I click "Emily Jordan" in the "Content Body" region
    Then I should see "Department Manager" in the "Content Body" region

   @deploy
  Scenario: Students node on profiles page
    Given I am on "people/students/profiles"
    And I click "Haley Jackson" in the "Content Body" region
    Then I should see "B.A., Stanford University, 2012" in the "Content Body" region

   @deploy
  Scenario: students node on list page
    Given I am on "people/students/list"
    Then I should see "Haley Jackson" in the "Content Body" region

   @deploy
  Scenario: Students node on grid page
    Given I am on "people/students/grid"
    And I click "Haley Jackson" in the "Content Body" region
    Then I should see "B.A., Stanford University, 2012" in the "Content Body" region

   @deploy
  Scenario: Students node on directory page
    Given I am on "people/students/directory"
    And I click "Haley Jackson" in the "Content Body" region
    Then I should see "B.A., Stanford University, 2012" in the "Content Body" region

   @live
  Scenario: Grid layout for faculty
    Given I am on "people/faculty/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: Profiles layout for faculty
    Given I am on "people/faculty/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: List layout for faculty
    Given I am on "people/faculty/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: Directory layout for faculty
    Given I am on "people/faculty/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: Grid layout for staff
    Given I am on "people/staff/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: Profiles layout for staff
    Given I am on "people/staff/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: List layout for staff
    Given I am on "people/staff/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: Directory layout for staff
    Given I am on "people/staff/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: Grid layout for students
    Given I am on "people/students/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: Profiles layout for students
    Given I am on "people/students/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: List layout for students
    Given I am on "people/students/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

   @live
  Scenario: Directory layout for students
    Given I am on "people/students/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: Grid layout for professor
    Given I am on "people/professor/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: Profiles layout for professor
    Given I am on "people/professor/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: List layout for professor
    Given I am on "people/professor/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: Directory layout for professor
    Given I am on "people/professor/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: Grid layout for department-administrator
    Given I am on "people/department-administrator/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: Profiles layout for department-administrator
    Given I am on "people/department-administrator/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: List layout for department-administrator
    Given I am on "people/department-administrator/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: Directory layout for department-administrator
    Given I am on "people/department-administrator/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: Grid layout for graduate-students
    Given I am on "people/graduate-students/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: Profiles layout for graduate-students
    Given I am on "people/graduate-students/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: List layout for graduate-students
    Given I am on "people/graduate-students/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region

   @deploy
  Scenario: Directory layout for graduate-students
    Given I am on "people/graduate-students/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region
