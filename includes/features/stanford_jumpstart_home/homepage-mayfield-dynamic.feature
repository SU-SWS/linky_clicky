Feature: Mayfield Homepage Layout
  In order to ensure that the Jumpstart "Mayfield" page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @javascript
  Scenario: Enable the Mayfield homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-panama-selector" button
    Then I press the "edit-layouts-stanford-jumpstart-home-mayfield-news-events-selector" button
    Then I should see "Customized design options saved" in the "Console" region
    Then I press the "edit-layouts-stanford-jumpstart-home-mayfield-selector" button
    Then I should see "Customized design options saved" in the "Console" region

