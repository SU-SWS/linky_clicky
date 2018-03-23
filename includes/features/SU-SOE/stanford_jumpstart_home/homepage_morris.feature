Feature: Morris Homepage Layout
  In order to ensure that the Jumpstart "Morris" dynamic page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive 
  Scenario: Enable the Morris News & Events homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-morris-selector" button

    # Header content for Morris
    Given I am on the homepage
    Then I should see the "About" heading in the "Main Top" region
    Then I should see the "Small Custom Block" heading in the "Content 3 column flow" region
    Then I should see the "Recent News" heading in the "Content 3 column flow" region
    Then I should see the "Upcoming Events" heading in the "Content 3 column flow" region

   # Homepage content Morris
    Given I am on the homepage
    Then I should see "This is your About block" in the "Main Top" region
    Then I should see "Sample News" in the "Content 3 column flow" region
    Then I should see "You can use this block to highlight content" in the "Content 3 column flow" region
    Then I should see "See more events" in the "Content 3 column flow" region

    # Homepage links Morris
    Given I am on the homepage
    Then I should see the link "More about us" in the "Main Top" region
    Then I should see the link "Learn more" in the "Content 3 column flow" region
    Then I should see the link "See more news" in the "Content 3 column flow" region
    Then I should see the link "See more events" in the "Content 3 column flow" region

   # Homepage image Morris
    Given I am on the homepage
    Then I should see 1 ".field-name-field-s-image-image" element in the "Main Top" region
