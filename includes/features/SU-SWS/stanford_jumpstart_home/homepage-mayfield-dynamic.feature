@deploy
Feature: Mayfield Homepage Layout
  In order to ensure that the Jumpstart "Mayfield" dynamic page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive
  Scenario: Set the homepage to Mayfield news and events
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-mayfield-news-events-selector" button

  @dev
  Scenario Outline: Header content for mayfield with news and events.
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

    Examples:
      | Header                | Region                |
      | About                 | Content 3 column flow |
      | Recent News           | Content 3 column flow |
      | Upcoming Events       | Content 3 column flow |

  @safe
  Scenario Outline: Homepage content for mayfield with news and events
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

    Examples:
      | Text | Region |
      | Feature a tagline or website subtitle here | Main Top |
      | Do the right thing. It will gratify some people and astonish the rest. | Main Top |
      | Mark Twain | Main Top |
      | This is your About block | Content 3 column flow |
      | Recent News | Content 3 column flow |
      | Upcoming Events | Content 3 column flow |

  @safe
  Scenario Outline: Homepage links for mayfield with news and events
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

    Examples:
      | Link                          | Region                |
      | About us                      | Main Top              |
      | Learn more about Mark Twain   | Main Top              |
      | More about us                 | Content 3 column flow |
      | See more news                 | Content 3 column flow |
      | See more events               | Content 3 column flow |
