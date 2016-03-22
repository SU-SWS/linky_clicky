Feature: Stanford Page
  In order to ensure that the Stanford Page displays properly
  As an end user
  I want to verify the display of content.

  @api @javascript @content
  Scenario: Add Stanford Page
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Add Page" in the "Admin Shortcuts" region
    Then I should see "Create Stanford Page" in the "Branding" region
    And the "Text format" field should contain "content_editor_text_format"
    When I click "Show Add/Edit Image"
    #And I click on “Choose File”  in the "Content Body" region
    Then I should see "Source Info" in the "Content Body" region
    When I enter "Foo" for "Title"
    And I press the "Save" button
    Then I should see "Stanford Page Foo has been created" in the "Console" region
    And I should be on "foo"
