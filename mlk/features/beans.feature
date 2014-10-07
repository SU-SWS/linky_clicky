Feature: Stanford Bean Types
  In order to ensure beans are available.

Scenario: Stanford Banner Bean Available
 Given I am on "block/add"
 Given I am logged in as a user with the "site owner" role
 Then I should see "stanford_banner" in the "Content Body" region

Scenario: Stanford Contact Bean Available
 Given I am on "block/add"
 Given I am logged in as a user with the "site owner" role
 Then I should see "stanford_contact" in the "Content Body" region

Scenario: Stanford Large Block Bean Available
 Given I am on "block/add"
 Given I am logged in as a user with the "site owner" role
 Then I should see "stanford_large_block" in the "Content Body" region

Scenario: Stanford Postcard Bean Available
 Given I am on "block/add"
 Given I am logged in as a user with the "site owner" role
 Then I should see "stanford_postcard" in the "Content Body" region

Scenario: Stanford Social Media Bean Available
 Given I am on "block/add"
 Given I am logged in as a user with the "site owner" role
 Then I should see "stanford_social_media_connect" in the "Content Body" region
