Feature: Contact
  In order to ensure that the Department of Classics website Contact content is visible
  As an end user
  I want to check for the existence of page and block content

  Scenario: Viewing image on the Contact page
    Given I am on "contact-us/contact"
    Then I should see a ".field-name-field-s-image-image" element

  Scenario Outline: Contact page content
    Given I am on "contact-us/contact"
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                                 | Region       |
    | Department of Classics                               | Content Body |
    | Administrative Services Manager: Valerie Kiszka      | Content Body |
    | Student Services Officer: Lori Lynn Taniguchi        | Content Body |
    | Department Coordinator: Lydia Hailu                  | Content Body |
    | Department Chair: Walter Scheidel                    | Content Body |
    | Director of Graduate Studies: Grant Parker           | Content Body |
    | Director of Undergraduate Studies: Giovanna Ceserani | Content Body |

  Scenario: Contact page links
    Given I am on "contact-us/contact"
    When I click "Walter Scheidel"
    Then I should be on "people/walter-scheidel"
    Given I am on "contact-us/contact"
    When I click "Grant Parker"
    Then I should be on "people/grant-parker"
    Given I am on "contact-us/contact"
    When I click "Giovanna Ceserani"
    Then I should be on "people/giovanna-ceserani"

  Scenario: Clicking the sidebar menu
    Given I am on "contact-us/contact"
    And I click "Location" in the "First sidebar" region
    Then I should see "We are located in the main quad of Stanford University near Stanford Memorial Church in Building 110" in the "Content Body" region
    And I should see the heading "Getting Here" in the "Content Body" region
