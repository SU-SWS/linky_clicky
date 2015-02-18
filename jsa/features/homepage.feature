Feature: Homepage
  In order to ensure that the Jumpstart Academic website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  Scenario Outline: Header content
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                | Region                |
    | Welcome to your site! | Main Top              |
    | About                 | Content 3 column flow |
    | Recent News           | Content 3 column flow |
    | Upcoming Events       | Content 3 column flow |
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
    | Feature a tagline or website subtitle here                    | Main Top|
    | Edit this block to change the image and caption               | Main Top |
    | This is your About block                                             | Content 3 column flow  |

  Scenario Outline: Homepage links
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                                | Region                |
    | Example link                        | Main Top|
    | More about us           | Content 3 column flow |
    | Sample News: Smith Conference       | Content 3 column flow |
    | See more news                       | Content 3 column flow |
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
