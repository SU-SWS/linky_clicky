Feature: Webauth login
  In order to have access to permissions and use other webauth features
  As an end user
  I want to be able to login to the site using webauth

  @safe
  Scenario: Verify that /user page has the appropriate content
  Given I am on "user"
  Then I should see the text "WebAuth Login"
  And I should see the text "Local User Login"
