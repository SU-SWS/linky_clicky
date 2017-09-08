Feature: Stanford School of Engineering Menus
  In order to ensure that the SoE menus are configured correctly
  I want to check for the correct menu items

  @live
  Scenario: Verify that we have the correct main navigation items
    Given I am on the homepage
    Then I should see "Admission & Aid" in the "Main Navigation" region
    Then I should see "Students & Academics" in the "Main Navigation" region
    Then I should see "Faculty & Research" in the "Main Navigation" region
    Then I should see "Get Involved" in the "Main Navigation" region
    And I should see "About" in the "Main Navigation" region

  @live
  Scenario: Verify that we have the correct Admission & Aid navigation items
    Given I am on the homepage
    When I click "Admission & Aid"
    Then I should be on "admission-aid"

    When I click "Graduate Admission"
    Then I should be on "admission-aid/graduate-admission"

    When I click "Coterm"
    Then I should be on "admission-aid/coterminal-study-engineering"
    When I click "Financial Support"
    Then I should be on "admission-aid/coterm/applying-deans-office-financial-support"

    When I click "Financial Aid"
    Then I should be on "admission-aid/financial-aid"

  @live
  Scenario: Verify that we have the correct Students & Academics navigation items
    Given I am on the homepage
    When I click "Students & Academics"
    Then I should be on "students-and-academics"

    When I click "Academics"
    Then I should be on "students-academics/academics"
    When I click "Undergraduate Degree Programs"
    Then I should be on "students-academics/academics/undergraduate-degree-programs"
    When I click "Graduate Degree Programs"
    Then I should be on "students-academics/academics/graduate-degree-programs"
    When I click "Online Learning"
    Then I should be on "students-academics/academics/online-learning"
    When I click "Student Awards"
    Then I should be on "students-academics/academics/frederick-emmons-terman-engineering-scholastic-award"

    When I click "Support and Resources"
    Then I should be on "students-academics/support-and-resources"

    When I click "Global Engineering Programs"
    Then I should be on "students-academics/global-engineering-programs"

    When I click "Engineering Diversity Programs"
    Then I should be on "students-academics/engineering-diversity-programs"

    When I click "The Student Experience"
    Then I should be on "students-academics/student-experience"

  @live
  Scenario: Verify that we have the correct Faculty & Research navigation items
    Given I am on the homepage
    When I click "Faculty & Research"
    Then I should be on "faculty-research"

    When I click "Faculty"
    Then I should be on "people/faculty/grid"

    When I click "Events"
    Then I should be on "events/upcoming-events"

    When I click "Departments"
    Then I should be on "faculty-research/departments"

    When I click "Institutes, Labs and Centers"
    Then I should be on "faculty-research/institutes-labs-and-centers"

    When I click "Faculty Awards"
    Then I should be on "faculty-research/faculty-awards"

  @live
  Scenario: Verify that we have the correct Get Involved navigation items
    Given I am on the homepage
    When I click "Get Involved"
    Then I should be on "get-involved"

    When I click "Give"
    Then I should be on "get-involved/give"

    When I click "Collaborations"
    Then I should be on "get-involved/collaborations"

    When I click "Alumni"
    Then I should be on "get-involved/alumni"

    When I click "Letters from Department Chairs"
    Then I should be on "get-involved/letters-department-chairs"

  @live
  Scenario: Verify that we have the correct About navigation items
    Given I am on the homepage
    When I click "About"
    Then I should be on "about"
    When I click "Dean"
    Then I should be on "about/dean"
    When I click "Dean’s Office"
    Then I should be on "about/dean-s-office"
    When I click "Heroes"
    Then I should be on "about/heroes"
    When I click "School News"
    Then I should be on "news/school-news"
    When I click "History"
    Then I should be on "about/history"
    When I click "Visit"
    Then I should be on "about/visit"
    When I click "SoE-Future"
    Then I should be on "about/soe-future"
