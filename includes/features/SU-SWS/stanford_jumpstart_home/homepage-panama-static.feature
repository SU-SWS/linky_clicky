@deploy
Feature: Panama Homepage Layout
  In order to ensure that the Jumpstart "Panama" page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear
  (Tests in this Feature should fail if Panama is not the selected homepage layout)

  @api @dev @destructive
  Scenario: Enable the Panama homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-palm-selector" button
    Then I should see "Customized design options saved"
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the element with css selector "#edit-layouts-stanford-jumpstart-home-panama-selector"
    Then I should see "Customized design options saved"

  @api @safe
  Scenario: Editor should not access Customize Design
    Given I am logged in as a user with the "editor" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see the heading "Access denied" in the "Branding" region

  @api @safe
  Scenario Outline: Header content for panama static
    Given I am on the homepage
    And the cache has been cleared
    Then I should see the "Welcome to your site!" heading in the "Main Top" region
    Then I should see the "About" heading in the "Content 3 column flow" region
    Then I should see the "In the Spotlight" heading in the "Content 3 column flow" region
    Then I should see the "Announcements" heading in the "Content 3 column flow" region

  @api @safe
  Scenario Outline: Homepage content panama static
    Given I am on the homepage
    And the cache has been cleared
    Then I should see "Feature a tagline or website subtitle here" in the "Main Top" region
    Then I should see "Edit this block to change the image and caption" in the "Main Top" region
    Then I should see "This is your About block" in the "Content 3 column flow" region
    Then I should see "This is your Highlights block" in the "Content 3 column flow" region
    Then I should see "This is your Announcements block" in the "Content 3 column flow" region

  @api @safe
  Scenario Outline: Homepage links panama static
    Given I am on the homepage
    And the cache has been cleared
    Then I should see the link "About us" in the "Main Top" region
    Then I should see the link "Example link" in the "Main Top" region
    Then I should see the link "More about us" in the "Content 3 column flow" region
    Then I should see the link "More information" in the "Content 3 column flow" region
    Then I should see the link "Learn more about our programs" in the "Content 3 column flow" region
