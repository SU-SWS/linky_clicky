Feature: Stanford Person layout Views
  In order to ensure that the Stanford Person layout views work as expected.
  As an end user and administrator
  I want to check for the creation and display of people content

  @content @deploy @stanford
  Scenario: Faculty node on list page
    Given I am on "people/faculty/list"
    Then I should see "Jacob Smith" in the "Content Body" region
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Faculty" heading in the "Content Head" region
    And I should not see "Search faculty by name"

  @content @deploy @stanford
  Scenario: Staff node on list page
    Given I am on "people/staff/list"
    Then I should see "Emily Jordan" in the "Content Body" region
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Staff" heading in the "Content Head" region
    And I should not see "Search staff by name"

  @content @deploy  @stanford
  Scenario: students node on list page
    Given I am on "people/students/list"
    Then I should see "Haley Jackson" in the "Content Body" region
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Students" heading in the "Content Head" region
    And I should not see "Search students by name"

  @content @deploy @stanford
  Scenario: Grid layout for faculty
    Given I am on "people/faculty/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search faculty by name"

  @content @deploy @stanford
  Scenario: Profiles layout for faculty
    Given I am on "people/faculty/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search faculty by name"

  @content @deploy @stanford
  Scenario: List layout for faculty
    Given I am on "people/faculty/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search faculty by name"

  @content @deploy @stanford
  Scenario: Directory layout for faculty
    Given I am on "people/faculty/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search faculty by name"

  @content @deploy  @stanford
  Scenario: Grid layout for staff
    Given I am on "people/staff/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region

  @content @deploy @stanford
  Scenario: Profiles layout for staff
    Given I am on "people/staff/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search staff by name"

  @content @deploy @stanford
  Scenario: List layout for staff
    Given I am on "people/staff/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search staff by name"

  @content @deploy @stanford
  Scenario: Directory layout for staff
    Given I am on "people/staff/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search staff by name"

  @content @deploy @stanford
  Scenario: Grid layout for students
    Given I am on "people/students/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search students by name"

  @content @deploy  @stanford
  Scenario: Profiles layout for students
    Given I am on "people/students/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search students by name"

  @content @deploy  @stanford
  Scenario: List layout for students
    Given I am on "people/students/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search students by name"

  @content @deploy  @stanford
  Scenario: Directory layout for students
    Given I am on "people/students/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region
    And I should not see "Search students by name"

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
  Scenario: Grouped Grid layout for professor
    Given I am on "people/professor/grid/grouped"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "Professor" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Grouped Profiles layout for professor
    Given I am on "people/professor/profiles/grouped"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "Professor" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Grouped List layout for professor
    Given I am on "people/professor/list/grouped"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "Professor" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Grouped Directory layout for professor
    Given I am on "people/professor/directory/grouped"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "Professor" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Grouped CAP list layout for professor
    Given I am on "people/professor/cap-list/grouped"
    Then I should see a ".view-stanford-person-cap-list" element
    And I should see a ".view-stanford-person-cap-list" element
    And I should see the "Professor" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Grid layout for department-administrator
    Given I am on "people/department-administrator/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Department Administrator" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Profiles layout for department-administrator
    Given I am on "people/department-administrator/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Department Administrator" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: List layout for department-administrator
    Given I am on "people/department-administrator/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Department Administrator" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: CAP List layout for department-administrator
    Given I am on "people/department-administrator/cap-list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-cap-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Department Administrator" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Directory layout for department-administrator
    Given I am on "people/department-administrator/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Department Administrator" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Grid layout for graduate-students
    Given I am on "people/graduate-students/grid"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Graduate Students" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Profiles layout for graduate-students
    Given I am on "people/graduate-students/profiles"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Graduate Students" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: Directory layout for graduate-students
    Given I am on "people/graduate-students/directory"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Graduate Students" heading in the "Content Head" region

  @content @deploy @stanford
  Scenario: CAP List layout for graduate-students
    Given I am on "people/graduate-students/cap-list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-cap-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Graduate Students" heading in the "Content Head" region

  @content @deploy @stanford @cjw
  Scenario: List layout for graduate-students
    Given I am on "people/graduate-students/list"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "Graduate Students" heading in the "Content Head" region



  @content @deploy @stanford
  Scenario: CAP List layout for all people
    Given I am on "people/all/cap-list"
    Then I should see a ".view-stanford-person-cap-list" element
    And I should see the "People" heading in the "First sidebar" region
    And I should see the "People" heading in the "Content Head" region


  @content @deploy @stanford
  Scenario Outline: Grouped Grid layout for professor
    Given I am on "people/all/grid/grouped"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-grid" element
    And I should see the "People" heading in the "Content Head" region
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header   | Region       |
  | Faculty  | Content Body |
  | Students | Content Body |
  | Staff    | Content Body |



  @content @deploy @stanford
  Scenario Outline: Grouped Profiles layout for professor
    Given I am on "people/all/profiles/grouped"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-profiles" element
    And I should see the "People" heading in the "Content Head" region
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header   | Region       |
  | Faculty  | Content Body |
  | Students | Content Body |
  | Staff    | Content Body |


  @content @deploy @stanford
  Scenario Outline: Grouped List layout for professor
    Given I am on "people/all/list/grouped"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-list" element
    And I should see the "People" heading in the "Content Head" region
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header   | Region       |
  | Faculty  | Content Body |
  | Students | Content Body |
  | Staff    | Content Body |


  @content @deploy @stanford
  Scenario Outline: Grouped Directory layout for professor
    Given I am on "people/all/directory/grouped"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-directory" element
    And I should see the "People" heading in the "Content Head" region
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header   | Region       |
  | Faculty  | Content Body |
  | Students | Content Body |
  | Staff    | Content Body |


  @content @deploy @stanford
  Scenario Outline: Grouped CAP List layout for professor
    Given I am on "people/all/cap-list/grouped"
    Then I should see a ".views-row-first" element
    And I should see a ".view-stanford-person-cap-list" element
    And I should see the "People" heading in the "Content Head" region
    Then I should see the "<Header>" heading in the "<Region>" region

    Examples:
      | Header   | Region       |
      | Faculty  | Content Body |
      | Students | Content Body |
      | Staff    | Content Body |