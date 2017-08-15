Feature: Ensure Site Owners can create and delete affiliates
In order to ensure that users with permissions can create, edit and delete affiliates
As a user with site permissions
I want to be able create, edit and delete affiliates

@api @dev @destructive
Scenario: Ensure site owners can create, edit and delete their own affiliates
Given I am logged in as a user with the "site owner" role
And I am on "node/add/stanford-affiliate-organization"
Then I should see "Create Affiliate Organization"
And the "Text format" field should contain "content_editor_text_format"
Then I fill in "edit-title" with "Foo"
And I press the "Save" button
Then I should see "Affiliate Organization Foo has been created" in the "Console" region
And I should be on "affiliates/foo"
And I click "Edit" in the "Content Head" region
Then I fill in "edit-title" with "Bar"
And I press the "Save" button
Then I should see "Affiliate Organization Bar has been updated" in the "Console" region
And I should be on "affiliates/bar"
And I click "Edit" in the "Content Head" region
And I click on the element with css selector "#edit-delete"
And I click on the element with css selector "#edit-submit"
Then I should see the text "Affiliate Organization Bar has been deleted" in the "Console" region

@api @dev @destructive
Scenario: Ensure site owners can edit and delete any affiliates
Given I am logged in as a user with the "administrator" role
And I am on "node/add/stanford-affiliate-organization"
Then I should see "Create Affiliate Organization" in the "Branding" region
And the "Text format" field should contain "content_editor_text_format"
Then I fill in "edit-title" with "Foo"
And I press the "Save" button
Then I should see "Affiliate Organization Foo has been created" in the "Console" region
And I should be on "affiliates/foo"
Given I am logged in as a user with the "site owner" role
And I am on "affiliates/foo"
And I click "Edit" in the "Content Head" region
Then I fill in "edit-title" with "Bar"
And I press the "Save" button
Then I should see "Affiliate Organization Bar has been updated" in the "Console" region
And I should be on "affiliates/bar"
And I click "Edit" in the "Content Head" region
And I click on the element with css selector "#edit-delete"
And I click on the element with css selector "#edit-submit"
Then I should see the text "Affiliate Organization Bar has been deleted" in the "Console" region
