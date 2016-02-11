Feature: Stanford Jumpstart Engineering Menus
  In order to ensure that the JSE menus are configured correctly
  I want to check for the correct menu items

  @safe @site @jse @deploy
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


  @safe @site @jse @deploy
  Scenario: Verify that we have the correct About navigation items
    Given I am on the homepage
    When I click on "About"
    Then I should be on "about/mission"
    When I click on "Programs"
    Then I should be on "about/affiliated-programs"
    When I click on "Affiliates"
    Then I should be on "about/affiliate-organizations"
    When I click on "Courses"
    Then I should be on "courses"
    When I click on "Contact"
    Then I should be on "about/contact"


  @safe @site @jse @deploy
  Scenario: Verify that we have the correct People navigation items
    Given I am on the homepage
    When I click on "People"
    Then I should be on "people/all/grid/grouped"
    When I click on "Faculty"
    Then I should be on "people/faculty"
    When I click on "Students"
    Then I should be on "people/students/cap-list"
    When I click on "Staff"
    Then I should be on "people/staff"


  @safe @site @jse @deploy
  Scenario: Verify that we have the correct People navigation items
    Given I am on the homepage
    When I click on "Research"
    Then I should be on "research/overview"
    When I click on "Research Example"
    Then I should be on "research/research-example"
    When I click on "Project Example"
    Then I should be on "research/project-example"


  @safe @site @jse @deploy
  Scenario: Verify that we have the correct Publications navigation items
    Given I am on the homepage
    When I click on "Publications"
    Then I should be on "publications"


  @safe @site @jse @deploy
  Scenario: Verify that we have the correct News navigation items
    Given I am on the homepage
    When I click on "News"
    Then I should be on "news/recent-news"
    When I click on "Newsletter"
    Then I should be on "news/department-newsletter"
    When I click on "Subscribe"
    Then I should be on "news/subscribe"
    When I click on "Gallery"
    Then I should be on "news/gallery"


  @safe @site @jse @deploy
  Scenario: Verify that we have the correct Events navigation items
    Given I am on the homepage
    When I click on "Events"
    Then I should be on "events/upcoming-events"
    When I click on "Past Events"
    Then I should be on "events/past-events"
    When I click on "Event Series"
    Then I should be on "events/series"


  @safe @site @jse @deploy
  Scenario: Verify that we have the correct Resources navigation items
    Given I am on the homepage
    When I click on "Resources"
    Then I should be on "resources/overview"
    When I click on "Software Resources"
    Then I should be on "resources/software"
    When I click on "References"
    Then I should be on "resources/references"