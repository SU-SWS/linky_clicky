Feature: Homepage
  In order to ensure that the Jumpstart Plus website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  @api @destructive @dev @stanford
  Scenario: Enable the Palm News and Events homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-palm-news-events-selector" button

  Scenario Outline: Header content
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

    Examples:
      | Header                | Region |
      | Connect               | Footer |
      | Contact Us            | Footer |
      | Optional Footer Block | Footer |
      | Related Links         | Footer |

  Scenario Outline: Homepage content
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

    Examples:
      | Text                                            | Region   |
      | Welcome to your site                            | Main Top |
      | Edit this block to change the image and caption | Main Top |
      | Building Name Room 555                          | Footer   |
      | This is your Optional Footer Block              | Footer   |

  Scenario Outline: Homepage links
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

    Examples:
      | Link                 | Region                |
      | More about us        | Content 3 column flow |
      | See more news        | Content 3 column flow |
      | See more events      | Content 3 column flow |
      | Facebook             | Footer                |
      | Twitter              | Footer                |
      | GooglePlus           | Footer                |
      | LinkedIn             | Footer                |
      | YouTube              | Footer                |
      | Vimeo                | Footer                |
      | Tumblr               | Footer                |
      | Pinterest            | Footer                |
      | Flickr               | Footer                |
      | sunetid@stanford.edu | Footer                |
      | Campus Map           | Footer                |
      | Stanford University  | Footer                |
      | Research at Stanford | Footer                |
      | Stanford News        | Footer                |
