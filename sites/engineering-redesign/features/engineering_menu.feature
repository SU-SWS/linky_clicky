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
  Scenario: Verify that we have the correct About navigation items
    Given I am on the homepage
    When I click "About"
    Then I should be on "about"
    When I click "Dean"
    Then I should be on "about/dean"
    #Then show me the HTML page
    #When I click "Dean’s Office"
    #Then I should be on "about/dean-s-office"
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


  @deploy
  Scenario: Verify that we have the correct People navigation items
    Given I am on the homepage
    When I click "People"
    Then I should be on "people/all/grid/grouped"
    When I click "Faculty"
    Then I should be on "people/faculty"
    When I click "Students"
    Then I should be on "people/students/cap-list"
    When I click "Staff"
    Then I should be on "people/staff"



  @deploy
  Scenario: Verify that we have the correct People navigation items
    Given I am on the homepage
    When I click "Research"
    Then I should be on "research/overview"
    When I click "Research Example"
    Then I should be on "research/research-example"
    When I click "Project Example"
    Then I should be on "research/project-example"


  @deploy
  Scenario: Verify that we have the correct Publications navigation items
    Given I am on the homepage
    When I click "Publications"
    Then I should be on "publications"


  @deploy
  Scenario: Verify that we have the correct News navigation items
    Given I am on the homepage
    When I click "News"
    Then I should be on "news/recent-news"
    When I click "Newsletter"
    Then I should be on "news/department-newsletter"
    When I click "Subscribe"
    Then I should be on "news/subscribe"
    When I click "Gallery"
    Then I should be on "news/gallery"


  @deploy
  Scenario: Verify that we have the correct Events navigation items
    Given I am on the homepage
    When I click "Events"
    Then I should be on "events/upcoming-events"
    When I click "Past Events"
    Then I should be on "events/past-events"
    When I click "Event Series"
    Then I should be on "events/series"


  @deploy
  Scenario: Verify that we have the correct Resources navigation items
    Given I am on the homepage
    When I click "Resources"
    Then I should be on "resources/overview"
    When I click "Software Resources"
    Then I should be on "resources/software"
    When I click "References"
    Then I should be on "resources/references"