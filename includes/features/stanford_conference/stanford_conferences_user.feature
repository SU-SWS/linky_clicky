@dev
Feature: Stanford Conference User
  In order to ensure that users can use the stanford_conference module
  As a privelledged user
  I want to ensure that the Stanford Conference module is working properly

  Background:
    Given the "stanford_capx" module is enabled

  @api @javascript
  Scenario: Check that the content types exist
    Given I am logged in as a user with the "administrator" role


