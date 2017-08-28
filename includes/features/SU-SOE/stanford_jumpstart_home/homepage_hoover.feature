Feature: Hoover Homepage Layout
  In order to ensure that the Jumpstart "Hoover" dynamic page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive @javascript
  Scenario: Enable the Hoover homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-hoover-selector" button

  @deploy
  Scenario: Header content for hoover homepage
    Given I am on the homepage
    Then I should see the "About" heading in the "Main Top" region
    Then I should see the "Small Custom Block" heading in the "Content Lower" region
    Then I should see the "Large Custom Block" heading in the "Content Lower" region
    Then I should see the "Affiliates" heading in the "Main Bottom" region
    Then I should see the "Contact Us" heading in the "Footer" region

  @deploy
  Scenario: Homepage content hoover
    Given I am on the homepage
    Then I should see "This is your About block" in the "Main Top" region
    Then I should see "You can use this block to highlight content" in the "Content Lower" region
    Then I should see "This is your large custom block" in the "Content Lower" region
    Then I should see "This is your custom" in the "Footer" region

  @safe
  Scenario: Homepage links on hoover
    Given I am on the homepage
    Then I should see the link "More about us" in the "Main Top" region
    Then I should see the link "Learn more" in the "Content Lower" region
    Then I should see the link "Learn more" in the "Content Lower" region

  @deploy
  Scenario: Affiliate Organizations page is visible and link in the main menu
    Given I am on the homepage
    Then I should see "Affiliates" in the "Main Bottom" region
    Then I should see 5 or more ".views-field-field-s-affiliate-image" elements

  @deploy
  Scenario: Homepage image Hoover
    Given I am on the homepage
    Then I should see 1 ".field-name-field-s-image-image" element in the "Main Top" region