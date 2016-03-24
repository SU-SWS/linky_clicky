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

  @api @deploy @live @safe
  Scenario: Editor should not access Customize Design
    Given I am logged in as a user with the "editor" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see the heading "Access denied" in the "Branding" region

  @api @deploy @live @safe
  Scenario: Content in regions
    Given I am on the homepage
    And the cache has been cleared
    Then I should see a ".infotext" element in the "Main Top" region

  @api @deploy @live @safe
  Scenario Outline: Header content for serra static
    Given I am on the homepage
    And the cache has been cleared
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text             | Region                |
    | About            | Content 3 column flow |
    | In the Spotlight | Content 3 column flow |
    | Announcements    | Content 3 column flow |

  @api @deploy @live @safe
  Scenario Outline: Homepage content for serra static
    Given I am on the homepage
    And the cache has been cleared
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text | Region |
    | Feature a tagline or website subtitle here | Main Top |
    | To edit the block and remove this placeholder | Main Top |
    | 99.9% | Main Top |
    | This is your first Mission block. | Content 2 column flow |
    | This is your second Mission block. | Content 2 column flow |
    | Use this block to list facts or highlight information | Main Top |
    | This is your About block.  | Content 3 column flow |
    | This is your Highlights block | Content 3 column flow |
    | This is your Announcements block | Content 3 column flow |

  @api @deploy @live @safe
  Scenario Outline: Homepage links for serra static
    Given I am on the homepage
    And the cache has been cleared
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                          | Region                |
    | About us                      | Main Top              |
    | More about us                 | Content 3 column flow |
    | More information              | Content 3 column flow |
    | Learn more about our programs | Content 3 column flow |
