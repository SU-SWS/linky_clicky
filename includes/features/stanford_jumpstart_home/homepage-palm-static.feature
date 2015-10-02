Feature: Palm Homepage Layout
  In order to ensure that the Jumpstart "Palm" page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @javascript @jsv
  Scenario: Enable the Palm homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-panama-selector" button
    When I press the element with css selector ".homepage-layout > input[id*='jumpstart-home-palm']"
    Then I should see "Customized design options saved" in the "Console" region

  @api @javascript @jsv
  Scenario: Enable the Palm homepage layout as site owner
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/stanford-jumpstart/customize-design"
    When I press the element with css selector ".homepage-layout > input[id*='jumpstart-home-panama']"
    When I press the element with css selector ".homepage-layout > input[id*='jumpstart-home-palm']"
    Then I should see "Customized design options saved" in the "Console" region

  @api @jsv
  Scenario: Editor should not access Customize Design
    Given I am logged in as a user with the "editor" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see the heading "Access denied" in the "Branding" region
    And I should see "This content has been restricted by the author or by the site administrator" in the "Content Body" region

  @api @jsv
  Scenario: Change homepage to palm static
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-palm-selector" button

  @jsv
  Scenario Outline: Header content for palm static
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                | Region                |
    | Welcome to your site! | Main Top              |
    | About                 | Content 3 column flow |
    | In the Spotlight      | Content 3 column flow |
    | Announcements         | Content 3 column flow |

  @jsv
  Scenario Outline: Homepage content for plam static
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text | Region |
    | Edit this block to change the image and caption. | Main Top |
    | This is your About block. | Content 3 column flow |
    | This is your Highlights block | Content 3 column flow |
    | This is your Announcements block | Content 3 column flow |

  @jsv
  Scenario Outline: Homepage links for palm static
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                          | Region                |
    | Example link                  | Main Top              |
    | More about us                 | Content 3 column flow |
    | More information              | Content 3 column flow |
    | Learn more about our programs | Content 3 column flow |

