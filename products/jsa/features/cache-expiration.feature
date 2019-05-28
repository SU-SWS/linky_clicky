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
    And I am an anonymous user
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
    And I am an anonymous user
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
    And I am an anonymous user
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
    And I am an anonymous user
    And I am on the homepage
    And I refresh the page
    Then I should see "[random:1]"
