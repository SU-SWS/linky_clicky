Feature: Stanford Jumpstart Engineering Menus
  In order to ensure that the JSE menus are configured correctly
  I want to check for the correct menu items

  @safe @site @content @deploy
  Scenario: Verify that we have the correct main navigation items
    Given I am on the homepage
    Then I should see "Home" in the "Main Navigation" region
    And I should see "About" in the "Main Navigation" region
    And I should see "People" in the "Main Navigation" region
    And I should see "Research" in the "Main Navigation" region
    And I should see "Publications" in the "Main Navigation" region
    And I should see "News" in the "Main Navigation" region
    And I should see "Events" in the "Main Navigation" region
    And I should see "Resources" in the "Main Navigation" region


  @safe @site @content @deploy
  Scenario: Verify that we have the correct About navigation items
    Given I am on the homepage
    When I click "About"
    Then I should be on "about/mission"
    When I click "Programs"
    Then I should be on "about/affiliated-programs"
    When I click "Affiliates"
    Then I should be on "about/affiliate-organizations"
    When I click "Courses"
    Then I should be on "courses"
    When I click "Contact"
    Then I should be on "about/contact"


  @safe @site @content @deploy
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


  @safe @site @content @deploy
  Scenario: Verify that we have the correct People navigation items
    Given I am on the homepage
    When I click "Research"
    Then I should be on "research/overview"
    When I click "Research Example"
    Then I should be on "research/research-example"
    When I click "Project Example"
    Then I should be on "research/project-example"


  @safe @site @content @deploy
  Scenario: Verify that we have the correct Publications navigation items
    Given I am on the homepage
    When I click "Publications"
    Then I should be on "publications"


  @safe @site @content @deploy
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


  @safe @site @content @deploy
  Scenario: Verify that we have the correct Events navigation items
    Given I am on the homepage
    When I click "Events"
    Then I should be on "events/upcoming-events"
    When I click "Past Events"
    Then I should be on "events/past-events"
    When I click "Event Series"
    Then I should be on "events/series"


  @safe @site @content @deploy
  Scenario: Verify that we have the correct Resources navigation items
    Given I am on the homepage
    When I click "Resources"
    Then I should be on "resources/overview"
    When I click "Software Resources"
    Then I should be on "resources/software"
    When I click "References"
    Then I should be on "resources/references"