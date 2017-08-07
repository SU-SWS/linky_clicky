Feature: Homepage
  In order to ensure that the Jumpstart Plus website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  @api @destructive @dev
  Scenario: Enable the Palm News and Events homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-palm-news-events-selector" button

  @api @destructive @dev
  Scenario Outline: Header content
    Given I am on the homepage
    And the cache has been cleared
    Then I should see the "Connect" heading in the "Footer" region
    Then I should see the "Contact Us" heading in the "Footer" region
    Then I should see the "Optional Footer Block" heading in the "Footer" region
    Then I should see the "Related Links" heading in the "Footer" region

  @api @destructive @dev
  Scenario Outline: Homepage content
    Given I am on the homepage
    And the cache has been cleared
    Then I should see "Welcome to your site" in the "Main Top" region
    Then I should see "Edit this block to change the image and caption" in the "Main Top" region
    Then I should see "Building Name Room 555" in the "Footer" region
    Then I should see "This is your Optional Footer Block" in the "Footer" region

  @api @destructive @dev
  Scenario Outline: Homepage links
    Given I am on the homepage
    And the cache has been cleared
    Then I should see the link "More about us" in the "Content 3 column flow" region
    Then I should see the link "Facebook" in the "Footer" region
    Then I should see the link "Twitter" in the "Footer" region
    Then I should see the link "GooglePlus" in the "Footer" region
    Then I should see the link "LinkedIn" in the "Footer" region
    Then I should see the link "YouTube" in the "Footer" region
    Then I should see the link "Vimeo" in the "Footer" region
    Then I should see the link "Tumblr" in the "Footer" region
    Then I should see the link "Pinterest" in the "Footer" region
    Then I should see the link "Flickr" in the "Footer" region
    Then I should see the link "sunetid@stanford.edu" in the "Footer" region
    Then I should see the link "Campus Map" in the "Footer" region
    Then I should see the link "Stanford University" in the "Footer" region
    Then I should see the link "Research at Stanford" in the "Footer" region
    Then I should see the link "Stanford News" in the "Footer" region
