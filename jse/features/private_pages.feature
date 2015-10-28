Feature: Stanford Private Page
  In order to ensure that the Internal Login button displays
  As an end user
  I want to check for the existence of the Internal Login button

  @deploy @jse @live @prod @safe @contrib
  Scenario: Check that the Internal Login button exists 
    Given I am on the homepage
    Then I should see "Internal Login" in the "Footer" region
    
