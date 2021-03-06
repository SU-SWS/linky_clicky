Feature: Homepage
  In order to ensure that the Department of Classics website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  @safe @live
  Scenario Outline: Header content
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

    Examples:
      | Header                                             | Region                |
      | Recent News                                        | Content 4 column flow |
      | Upcoming Events                                    | Content 4 column flow |
      | Recent Publications                                | Content 4 column flow |
      | Points of View: Why Classics?                      | Content Lower         |
      | Lorenz Eitner Lectures on Classics Art and Culture | Content Lower         |
      | Alumni and Friends of Classics                     | Content Lower         |
      | Quick Links                                        | Footer                |
      | People                                             | Footer                |
      | Connect                                            | Footer                |
      | Location                                           | Footer                |
      | Contact Us                                         | Footer                |

  @safe @live
  Scenario Outline: Homepage content
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

    Examples:
      | Text                                   | Region        |
      | With these annual lectures             | Content Lower |
      | Stay connected to Classics @ Stanford. | Content Lower |

  @safe @live
  Scenario Outline: Homepage links
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

    Examples:
      | Link                  | Region                |
      | See More News         | Content 4 column flow |
      | See More Events       | Content 4 column flow |
      | See More Publications | Content 4 column flow |
      | Events                | Footer                |
      | Current Research      | Footer                |
      | Eitner Lectures       | Footer                |
      | Faculty               | Footer                |
      | Staff                 | Footer                |
      | Graduate Students     | Footer                |
      | Campus Map            | Footer                |
      | classics@stanford.edu | Footer                |
