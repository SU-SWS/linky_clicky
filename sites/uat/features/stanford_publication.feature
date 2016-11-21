Feature: Stanford Publication
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford Publication module is working properly

  @api @dev @destructive @javascript
  Scenario: Create Publication
    Given the "stanford_publication" module is enabled
    And I am logged in as a user with the "administrator" role
    And I go to "node/add/stanford-publication"
    And I enter "1984" for "edit-title"
    And I enter "George Orwell" for "edit-field-s-pub-author-und-0-value"
    And I enter "Harvill Secker" for "Publisher"
    And I select "2016" from "edit-field-s-publication-year-und-0-value-year"
    And I enter "Read more about this title on Wikipedia" for "edit-field-s-pub-link-und-0-title"
    And I enter "https://en.wikipedia.org/wiki/Nineteen_Eighty-Four" for "edit-field-s-pub-link-und-0-url"
    And I press the "Save" button
    Then I should see "Publication 1984 has been created"
    And I should see the heading "1984"
    And I should see "George Orwell"
    And I should see "Harvill Secker"
    And I should see "2016"
    When I click "Read more about this title on Wikipedia"
    Then I should be on "https://en.wikipedia.org/wiki/Nineteen_Eighty-Four"
