Feature: Stanford Postcard Bean Block Type
  In order to ensure that the CAW website is editable by its site owners
  As an authenticated user
  I want to check that Cards and Callouts layouts is available

@api
Scenario: Callouts view mode is available
 Given I am logged in as a user with the "administrator" role
 And I am on "block/add/stanford-postcard"
 Then I select "Callouts" from "View Mode"

@api
Scenario: Cards view mode is available
 Given I am logged in as a user with the "administrator" role
 And I am on "block/add/stanford-postcard"
 Then I select "Cards" from "View Mode"

