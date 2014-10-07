Feature: Homepage
  In order to ensure that the Jumpstart Academic website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  Scenario Outline: Header content
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                | Region                |
    | About                 | First sidebar         |
    | Academic Programs     | First sidebar         |
    | Welcome to your site! | Content Body          |
    | Recent News           | Content 3 column flow |
    | Upcoming Events       | Content 3 column flow |
    | Affiliated Programs   | Content 3 column flow |
    | About                 | Footer                |
    | Academics             | Footer                |
    | People                | Footer                |
    | News and Events       | Footer                |
    | Connect               | Footer                |
    | Contact Us            | Footer                |

  Scenario Outline: Homepage content
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                                                 | Region                |
    | This is your About block                                             | First sidebar         |
    | This is your shortcuts block to get prospective and current students | First sidebar         |
    | Sample News: Smith Conference                                        | Content 3 column flow |
    | This is your Affiliated Programs block                               | Content 3 column flow |

  Scenario Outline: Homepage links
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                                | Region                |
    | More About Us                       | First sidebar         |
    | Undergraduate Program               | First sidebar         |
    | Graduate Programs                   | First sidebar         |
    | Example Link                        | Content Body          |
    | Sample News: Smith Conference       | Content 3 column flow |
    | See More News                       | Content 3 column flow |
    | See More Events                     | Content 3 column flow |
    | Link to a program you support       | Content 3 column flow |
    | Link to an office that sponsors you | Content 3 column flow |
    | Link to a project website           | Content 3 column flow |
    | See all affiliated programs         | Content 3 column flow |
    | About Us                            | Footer                |
    | Affiliated Programs                 | Footer                |
    | Location                            | Footer                |
    | Contact                             | Footer                |
    | Make a Gift                         | Footer                |
    | Undergraduate Program               | Footer                |
    | Graduate Programs                   | Footer                |
    | Courses                             | Footer                |
    | Faculty                             | Footer                |
    | Students                            | Footer                |
    | Department Newsletter               | Footer                |
    | Recent News                         | Footer                |
    | Subscribe                           | Footer                |
    | Staff                               | Footer                |
    | Campus Map                          | Footer                |
