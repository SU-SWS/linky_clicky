Feature: Stanford VPSA Content
  In order to ensure that specific content exists.
  As an end user
  I want to check for menu items and content pages.

  # Scenario: Viewing a featured image on the About page
  #   Given I am on "about"
  #   Then I should see "Arcade on the Quad" in the "Content Body" region


  @api @safe @deploy
  Scenario: Check for main menu items
  Given I am on the homepage
  Then I should see "Home" in the "Main Navigation" region
  Then I should see "Announcements & News" in the "Main Navigation" region
  Then I should see "Events" in the "Main Navigation" region
  Then I should see "People" in the "Main Navigation" region
  Then I should see "About" in the "Main Navigation" region
  Then I should see "Programs" in the "Main Navigation" region

  @api @safe @deploy
  Scenario: Check for deployed content
  Given I am on "news/recent-news"
  Then I should see "Recent News" in the "Main Content" region
  Then I should see "Sample News" in the "Main Content" region
  Given I am on "events/upcoming-events"
  Then I should see "Upcoming Events" in the "Main Content" region
  Then I should see 1 or more ".event-title" elements
  Given I am on "events/past-events"
  Then I should see "Past Events" in the "Main Content" region
  # Typo needs to change when fixed.. future -> past
  Then I should see "Currently, no future events are scheduled"
  Given I am on "people"
  Then I should see "This is your People page" in the "Main Content" region
  Given I am on "about"
  Then I should see "This is your About page" in the "Main Content" region
  Given I am on "about/contact"
  Then I should see "This is your Contact page" in the "Main Content" region
  Given I am on "programs"
  Then I should see "This is your landing page banner" in the "Main Content" region
  Then I should see "This is your Programs page" in the "Main Content" region
  Then I should see "Bing Overseas Studies Program" in the "Main Content" region

  # Check for block titles
  # https://github.com/SU-SWS/stanford_sites_jumpstart_vpsa/blob/7.x-4.x/includes/JumpstartSitesVPSA.php#L677

  @api @safe @deploy
  Scenario: Check for new and events block title changes
  Given I am on the homepage
  Then I should see the heading "Upcoming Events" in the "Main Content" region
  Then I should see the heading "Recent News" in the "Main Content" region
