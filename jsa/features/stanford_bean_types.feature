Feature: Stanford BEAN Types
 In order to ensure that upgrades do not break existing functionality
 As an end user
 I want to check that the Stanford BEAN Types module is working correctly

@api
Scenario: Stanford BEAN Types
 Given I am logged in as a user with the "administrator" role
   And I am on "block/add"
 Then I should see the link "stanford_banner" in the "Content Body" region
   And I should see the link "stanford_contact" in the "Content Body" region
   And I should see the link "stanford_large_block" in the "Content Body" region
   And I should see the link "stanford_postcard" in the "Content Body" region
   And I should see the link "stanford_social_media_connect" in the "Content Body" region