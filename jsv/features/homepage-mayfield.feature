Feature: Mayfield Homepage Layout
  In order to ensure that the Jumpstart "Mayfield" page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @javascript
  Scenario: Enable the Mayfield homepage layout as administrator
  # step definition not working yet
  #  Given the "stanford_jumpstart_home_mayfield" homepage layout is not selected
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    When I press the "edit-layouts-stanford-jumpstart-home-mayfield-selector" button
    Then I should see "Customized design options saved" in the "Console" region

  @api @javascript
  Scenario: Enable the Mayfield homepage layout as site owner
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/stanford-jumpstart/customize-design"
    When I press the "edit-layouts-stanford-jumpstart-home-mayfield-selector" button
    Then I should see "Customized design options saved" in the "Console" region

  @api
  Scenario: Editor should not access Customize Design
    Given I am logged in as a user with the "editor" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see the heading "Access denied" in the "Branding" region
    And I should see "This content has been restricted by the author or by the site administrator" in the "Content Body" region

  Scenario Outline: Header content
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                | Region                |
    | About                 | Content 3 column flow |
    | In the Spotlight      | Content 3 column flow |
    | Announcements         | Content 3 column flow |
    | Connect               | Footer                |
    | Contact Us            | Footer                |
    | Optional Footer Block | Footer                |
    | Related Links         | Footer                |

  Scenario Outline: Homepage content
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                                                                                                                                       | Region                |
    | Feature a tagline or website subtitle here                                                                                                                 | Main Top              |
    | Since its opening in 1891, Stanford has been dedicated to finding solutions to big challenges and to preparing students for leadership in a complex world. | Main Top              |
    | John Hennessy                                                                                                                                              | Main Top              |
    | This is your About block. Here you can post a short description of your group or organization                                                              | Content 3 column flow |
    | This is your Highlights block                                                                                                                              | Content 3 column flow |
    | This is your Announcements block                                                                                                                           | Content 3 column flow |
    | Building Name Room 555                                                                                                                                     | Footer                |
    | This is your Optional Footer Block                                                                                                                         | Footer                |

  Scenario Outline: Homepage links
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                          | Region                |
    | About us                      | Main Top              |
    | Learn more on stanford.edu    | Main Top              |
    | More about us                 | Content 3 column flow |
    | More information              | Content 3 column flow |
    | Learn more about our programs | Content 3 column flow |
    | Facebook                      | Footer                |
    | Twitter                       | Footer                |
    | GooglePlus                    | Footer                |
    | LinkedIn                      | Footer                |
    | YouTube                       | Footer                |
    | Vimeo                         | Footer                |
    | Tumblr                        | Footer                |
    | Pinterest                     | Footer                |
    | Flickr                        | Footer                |
    | sunetid@stanford.edu          | Footer                |
    | Campus Map                    | Footer                |
    | Stanford University           | Footer                |
    | Research at Stanford          | Footer                |
    | Stanford News                 | Footer                |
