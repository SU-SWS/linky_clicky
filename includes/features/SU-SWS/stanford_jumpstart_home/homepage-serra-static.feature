@deploy
Feature: Serra Homepage Layout
  In order to ensure that the Jumpstart "Serra" page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive
  Scenario: Enable the Serra homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-palm-selector" button
    Then I should see "Customized design options saved"
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-serra-selector" button
    Then I should see "Customized design options saved"

  @api @safe
  Scenario: Editor should not access Customize Design
    Given I am logged in as a user with the "editor" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see the heading "Access denied" in the "Branding" region

  @api @safe
  Scenario: Content in regions
    Given I am on the homepage
    And the cache has been cleared
    Then I should see a ".infotext" element in the "Main Top" region

  @api @safe
  Scenario Outline: Header content for serra static
    Given I am on the homepage
    And the cache has been cleared
    Then I should see "About" in the "Content 3 column flow" region
    Then I should see "In the Spotlight" in the "Content 3 column flow" region
    Then I should see "Announcements" in the "Content 3 column flow" region

  @api @safe
  Scenario Outline: Homepage content for serra static
    Given I am on the homepage
    And the cache has been cleared
    Then I should see "Feature a tagline or website subtitle here" in the "Main Top" region
    Then I should see "To edit the block and remove this placeholder" in the "Main Top" region
    Then I should see "99.9%" in the "Main Top" region
    Then I should see "This is your first Mission block." in the "Content 2 column flow" region
    Then I should see "This is your second Mission block." in the "Content 2 column flow" region
    Then I should see "Use this block to list facts or highlight information" in the "Main Top" region
    Then I should see "This is your About block." in the "Content 3 column flow" region
    Then I should see "This is your Highlights block" in the "Content 3 column flow" region
    Then I should see "This is your Announcements block" in the "Content 3 column flow" region

  @api @safe
  Scenario Outline: Homepage links for serra static
    Given I am on the homepage
    And the cache has been cleared
    Then I should see the link "About us" in the "Main Top" region
    Then I should see the link "More about us" in the "Content 3 column flow" region
    Then I should see the link "More information" in the "Content 3 column flow" region
    Then I should see the link "Learn more about our programs" in the "Content 3 column flow" region
