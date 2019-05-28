Feature: Cache Expiration
  In order to ensure that content changes are reflected immediately for anonymous users
  As a Site Owner
  I want to create, edit, and delete content
  As an anonymous user
  I want to see those changes immediately

  @api @destructive @javascript
  Scenario: Create a News Item and assure that it appears on the Recent News page
    # Prime the cache.
    Given I am an anonymous user
    And I am on "news/recent-news"
    Given I am logged in as a user with the "site owner" role
    # Not enabling any of the required modules here, because it should "just work".
    And I am on "node/add/stanford-news-item"
    Then I fill in "title" with "[random]"
    And I press the "Save" button
    Then I should see "News Item [random:1] has been created"
    Given I am an anonymous user
    And I am on "news/recent-news"
    And I refresh the page
    Then I should see "[random:1]"

  @api @destructive @javascript
  Scenario: Create a News Item and assure that it appears on the homepage
    # Prime the cache.
    Given I am an anonymous user
    And I am on the homepage
    Given I am logged in as a user with the "site owner" role
    # Not enabling any of the required modules here, because it should "just work".
    And I am on "node/add/stanford-news-item"
    Then I fill in "title" with "[random]"
    And I press the "Save" button
    Then I should see "News Item [random:1] has been created"
    Given I am an anonymous user
    And I am on the homepage
    And I refresh the page
    Then I should see "[random:1]"

  @api @destructive @javascript
  Scenario: Create an Event and assure that it appears on the Upcoming Events page
    # Prime the cache.
    Given I am an anonymous user
    And I am on "events/upcoming-events"
    Given I am logged in as a user with the "site owner" role
    # Not enabling any of the required modules here, because it should "just work".
    And I am on "node/add/stanford-event"
    Then I fill in "title" with "[random]"
    And I press the "Save" button
    Then I should see "Stanford Event [random:1] has been created"
    Given I am an anonymous user
    And I am on "events/upcoming-events"
    And I refresh the page
    Then I should see "[random:1]"

  @api @destructive @javascript
  Scenario: Create an Event and assure that it appears on the homepage
    # Prime the cache.
    Given I am an anonymous user
    And I am on the homepage
    Given I am logged in as a user with the "site owner" role
    # Not enabling any of the required modules here, because it should "just work".
    And I am on "node/add/stanford-event"
    Then I fill in "title" with "[random]"
    And I press the "Save" button
    Then I should see "Stanford Event [random:1] has been created"
    Given I am an anonymous user
    And I am on the homepage
    And I refresh the page
    Then I should see "[random:1]"

  @api @destructive @javascript
  Scenario: Create a Person (faculty) and assure that she appears on the Faculty page
    # Prime the cache.
    Given I am an anonymous user
    And I am on "people/faculty"
    Given I am logged in as a user with the "site owner" role
    # Not enabling any of the required modules here, because it should "just work".
    And I am on "node/add/stanford-person"
    Then I fill in "First name" with "Annie"
    And I fill in "Last Name" with "Aardvark"
    And I check "Faculty"
    And I press the "Save" button
    Then I should see "Person Annie Aardvark has been created"
    Given I am an anonymous user
    And I am on "people/faculty"
    And I refresh the page
    Then I should see "Annie Aardvark"

  @api @destructive @javascript
  Scenario: Create a Publication and assure that it appears on the Publications page
    # Prime the cache.
    Given I am an anonymous user
    And I am on "publications"
    Given I am logged in as a user with the "site owner" role
    # Not enabling any of the required modules here, because it should "just work".
    And I am on "node/add/stanford-publication"
    Then I fill in "edit-title" with "War and Peace"
    And I press the "Save" button
    Then I should see "Publication War and Peace has been created"
    Given I am an anonymous user
    And I am on "publications"
    And I refresh the page
    Then I should see "War and Peace"

  @api @destructive @javascript
  Scenario: Create a Course and assure that it appears on the Courses page
    # Prime the cache.
    Given I am an anonymous user
    And I am on "courses/search?combine=flux&field_s_course_section_year_value_selective=All&field_s_course_term_value=All"
    Then I should not see "Flux Capacitor Design and Implementation"
    Given I am logged in as a user with the "site owner" role
    # Not enabling any of the required modules here, because it should "just work".
    And I am on "node/add/stanford-course"
    Then I fill in "edit-title" with "Flux Capacitor Design and Implementation"
    And I press the "Save" button
    Then I should see "Course Flux Capacitor Design and Implementation has been created"
    Given I am an anonymous user
    And I am on "courses/search?combine=flux&field_s_course_section_year_value_selective=All&field_s_course_term_value=All"
    And I refresh the page
    Then I should see "Flux Capacitor Design and Implementation"
