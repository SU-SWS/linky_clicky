Feature: Terman Homepage Layout
  In order to ensure that the Jumpstart “Terman” dynamic page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive @javascript
  Scenario: Enable the Terman homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-Terman-selector" button

  @deploy @safe @stanford @test
  Scenario: Homepage image Terman
    Given I am on the homepage
    Then I should see 1 ".field-name-field-s-image-image" element in the “Content” region

  @deploy  @live @safe @test
  Scenario Outline: Header content for Terman homepage
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                | Region                |
    | About                 | Content Row 3         |
    | Recent News           | Content Row 3         |
    | Upcoming Events       | Content Row 3         |
    | Large Custom Block    | Content Lower         |
    | Small Custom Block    | Content Lower         |
    | Affiliates            | Main Bottom           |
    | Contact Us            | Footer                |

  @deploy  @live @safe @test
  Scenario Outline: Homepage content Terman
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                            | Region                |
    | This is your About block                        | Content Row 3         |
    | Stanford                                        | Content Row 3         |
    | Events                                          | Content Row 3         |
    | This is your large custom block                 | Content Lower         |
    | This is your custom                             | Footer                |

  @deploy  @live @safe @test
  Scenario Outline: Homepage links on Terman
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                          | Region                |
    | More about us                 | Content Row 3         |
    | See more news                 | Content Row 3         |
    | Learn more                    | Content Lower         |
    | Learn more                    | Content Lower         |

@deploy @safe @stanford @test
Scenario: Affiliate Organizations page is visible and link in the main menu
  Given I am on the homepage
  Then I should see "Affiliates" in the "Main Bottom" region
  Then I should see 5 or more ".views-field-field-s-affiliate-image" elements