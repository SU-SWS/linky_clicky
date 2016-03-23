Feature: Page not Found - 404
  In order to ensure that the Jumpstart website Page not found content is visible
  As an end user
  I want to check for the existence of the page

  Scenario Outline: Check content of the custom 404 page
    Given I am on "purple-monkey-dishwasher"
    Then I should see "Oops" in the "Content Body" region
    And I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                            | Region       |
    | Liberation Curriculum           | Content Body |
    | Lesson Plans                    | Content Body |
    | Info for Teachers               | Content Body |
    | Info for Students               | Content Body |
    | Featured Documents              | Content Body |
    | Info for Researchers            | Content Body |
    | King Papers Volumes             | Content Body |
    | King Institute Publications     | Content Body |
    | Additional Recommended Readings | Content Body |
    | About the Institute             | Content Body |
    | Contact Us                      | Content Body |
    | Our Staff                       | Content Body |