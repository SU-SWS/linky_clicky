Feature: Homepage
  In order to ensure that the King Institute website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  Scenario: Site title
    Given I am on the homepage
    Then I should see "The Martin Luther King, Jr. Research and Education Institute" in the "Header" region

  Scenario Outline: Header content
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                                           | Region                |
    | About                                            | First sidebar         |
    | Information For                                  | First sidebar         |
    | Recent News                                      | Content 3 column flow |
    | Support the King Institute                       | Content 3 column flow |
    | About                                            | Footer                |
    | Information for                                  | Footer                |
    | King Resources                                   | Footer                |
    | Connect                                          | Footer                |
    | Contact Us                                       | Footer                |
    | Join the March                                   | Footer                |
