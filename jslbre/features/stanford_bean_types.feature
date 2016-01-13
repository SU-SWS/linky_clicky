Feature: Stanford BEAN Types
  In order to ensure that upgrades do not break existing functionality
  As an end user
  I want to check that the Stanford BEAN Types module is working correctly

  @api @javascript @safe @live @deploy
  Scenario: Stanford BEAN Types
    Given I am logged in as a user with the "administrator" role
    And I am on "block/add"
    Then I should see the link "stanford_banner" in the "Content Body" region
    And I should see the link "stanford_contact" in the "Content Body" region
    And I should see the link "stanford_large_block" in the "Content Body" region
    And I should see the link "stanford_postcard" in the "Content Body" region
    And I should see the link "stanford_social_media_connect" in the "Content Body" region
    And I should see the link "stanford_big_text_block" in the "Content Body" region
    And I should see the link "stanford_testimonial_block" in the "Content Body" region
    And I should see the link "stanford_icon_block" in the "Content Body" region

  @api @javascript @content @dev
  Scenario: Create Icon block
    Given I am logged in as a user with the "administrator" role
    And I am on "block/add/stanford-icon-block"
    Then I fill in "Label" with "BeHat Test Icon Block"
    Then I fill in "Title" with "BeHat Test Icon Block Title"
    Then I select "Apple" from "Icon"
    Then I fill in "Hello, my name is Nick" in WYSIWYG editor "cke_contents_edit-body-und-0-value-iframe"
    Then I press "Save"
    Then I should see the message "stanford_icon_block BeHat Test Icon Block has been created"
