Feature: Hoover Homepage Layout
  In order to ensure that the Jumpstart "Hoover" dynamic page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive
  Scenario: Enable the Hoover News & Events homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-hoover-selector" button

  @deploy  @live @safe @test
  Scenario Outline: Header content for hoover homepage
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                | Region                |
    | About                 | Main Top              |
    | Small Custom Block    | Content Lower         |
    | Affiliates            | Main Bottom           |
    | Contact Us            | Footer                |

  @deploy  @live @safe @test
  Scenario Outline: Homepage content hoover
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                            | Region                |
    | This is your About block                        | Main Top              |
    | You can use this block to highlight content     | Content Lower         |
    | This is your custom        | Footer             |

  @deploy  @live @safe
  Scenario Outline: Homepage links hoover news and events
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                          | Region                |
    | About us                      | Main Top              |
    | Example link                  | Main Top              |
    | More about us                 | Content 3 column flow |
    | See more news                 | Content 3 column flow |
    | See more events               | Content 3 column flow |

@deploy @safe @stanford @test
Scenario: Affiliate Organizations page is visible and link in the main menu
  Given I am on the homepage
  Then I should see "Affiliates" in the "Main Bottom" region
  Then I should see 5 or more ".views-field-field-s-affiliate-image" elements
