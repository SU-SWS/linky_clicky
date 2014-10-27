Feature: Stanford Drupal Install Profile
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford Sites installation profile is working properly

  Scenario Outline: Text content
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                                                             | Region          |
    | Home                                                                             | Main Navigation |
    | Log in with WebAuth                                                              | First sidebar   |
    | Once you have logged in, you will be able to remove this text from your homepage | Content Body    |
    | Create a new page on your site                                                   | Content Body    |
    | Change your site's name and information                                          | Content Body    |
    | Get rid of this                                                                  | Content Body    |
    | Edit your navigation menus                                                       | Content Body    |
    | Add functionality and features                                                   | Content Body    |
    | Edit the look and feel of your site                                              | Content Body    |

  Scenario Outline: Header content
    Given I am on the homepage
    Then I should see the heading "<Header>" in the "<Region>" region

  Examples:
    | Header                                 | Region        |
    | WebAuth Login                          | First sidebar |
    | Welcome to Your Stanford Sites Website | Content Body  |
    | Quick Steps to Get Started             | Content Body  |
    | More advanced tasks:                   | Content Body  |
    | Going further:                         | Content Body  |

  @api
  Scenario: Search box - authenticated user
    Given I am logged in as a user with the "administrator" role
    And I am on the homepage
    Then I should see a "#edit-search-block-form--2" element
    When I enter "purple monkey dishwasher" for "Search"
    And I press the "Search" button
    Then I should be on "search/node/purple%20monkey%20dishwasher"
    And I should see the heading "Your search did not yield any results"
    And I should see "Remove quotes around phrases to match each word individually:"
    And I should see "stanford university"
    And I should see "will match less than stanford university."
    And I should see "Consider loosening your query with OR: stanford university will match less than stanford OR university."

  Scenario: Search box - anonymous user
    Given I am on the homepage
    Then I should not see a "#edit-search-block-form--2" element

  @api @javascript
  Scenario Outline: Quick Steps
    Given I am logged in as a user with the "administrator" role
    And I am on the homepage
    When I click "<Link>"
    Then I should see "<Text>"
    When I click "<Second Link>"
    Then I should be on "<Destination>"

  Examples:
    | Link                                    | Text                                                                               | Second Link                  | Destination                                                             |
    | Create a new page on your site          | Do you want an                                                                     | Create a New Page            | node/add/page                                                           |
    | Change your site's name and information | You can rename your site, add a slogan, or set an existing page to be the homepage | Edit Your Site's Information | admin/config/system/site-information                                    |
    | Get rid of this                         | Want to make these                                                                 | Hide This Block              | admin/structure/block/manage/stanford_sites_helper/firststeps/configure |
    | Get rid of this                         | Drupal uses a system called                                                        | Configure All Blocks         | admin/structure/block                                                   |
    | Edit your navigation menus              | Drupal comes pre-packaged with a Main menu navigation                              | Edit Your Main Menu          | admin/structure/menu/manage/main-menu                                   |
    | Edit your navigation menus              | First create new pages, and then add them to your menu                             | Create a New Menu            | admin/structure/menu/add                                                |
    | Add functionality and features          | Want to add a contact form to your site? Looking to do more with your site?        | Visit Your Modules           | admin/modules                                                           |
    | Edit the look and feel of your site     | Your site comes pre-packaged with the Stanford Light theme.                        | Edit Your Theme Settings     | admin/appearance/settings                                               |

  @api
  Scenario Outline: Going Further
    Given I am logged in as a user with the "administrator" role
    And I am on the homepage
    When I click "<Link>"
    Then I should be on "<Destination>"

  Examples:
    | Link                   | Destination                    |
    | Add a new user         | admin/people/create            |
    | Create a new user role | admin/people/permissions/roles |
    | Edit permissions       | admin/people/permissions       |
    | Create a new View      | admin/structure/views/add      |

