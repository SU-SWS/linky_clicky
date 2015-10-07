Feature: Mayfield Homepage Layout
  In order to ensure that the Jumpstart "Mayfield" page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive @javascript @jsa @jsv
  Scenario: Enable the Mayfield homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-panama-selector" button
    Then I press the "edit-layouts-stanford-jumpstart-home-mayfield-selector" button
    Then I should see "Customized design options saved" in the "Console" region

  @api @dev @destructive @javascript @jsa @jsv
  Scenario: Enable the Mayfield homepage layout as site owner
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/stanford-jumpstart/customize-design"
    When I press the element with css selector ".homepage-layout > input[id*='jumpstart-home-panama']"
    When I press the element with css selector ".homepage-layout > input[id*='jumpstart-home-mayfield']"
    Then I should see "Customized design options saved" in the "Console" region

  @api @deploy @jsa @jsv @live @safe
  Scenario: Editor should not access Customize Design
    Given I am logged in as a user with the "editor" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see the heading "Access denied" in the "Branding" region

  @api @dev @destructive @javascript @jsa @jsv
  Scenario: Change homepage to mayfield static
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-mayfield-selector" button

  @deploy @jsa @jsv @live @safe
  Scenario Outline: Header content for mayfield without news and events.
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                | Region                |
    | About                 | Content 3 column flow |
    | In the Spotlight      | Content 3 column flow |
    | Announcements         | Content 3 column flow |

  @deploy @jsa @jsv @live @safe
  Scenario Outline: Homepage content for mayfield without news and events
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                                                                          | Region                |
    | Feature a tagline or website subtitle here                                                    | Main Top              |
    | Do the right thing. It will gratify some people and astonish the rest.                        | Main Top              |
    | Mark Twain                                                                                    | Main Top              |
    | This is your About block. Here you can post a short description of your group or organization | Content 3 column flow |
    | This is your Highlights block                                                                 | Content 3 column flow |
    | This is your Announcements block                                                              | Content 3 column flow |

  @deploy @jsa @jsv @live @safe
  Scenario Outline: Homepage links for mayfield without news and events
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                          | Region                |
    | About us                      | Main Top              |
    | Learn more about Mark Twain   | Main Top              |
    | More about us                 | Content 3 column flow |
    | More information              | Content 3 column flow |
    | Learn more about our programs | Content 3 column flow |
