Feature: HTTP Strict Transport Security (HSTS)
  In order to ensure that my connection to the website is secure
  As an anonymous user
  I want to ensure that the Strict Transport Security header is set

  @api
  Scenario: HSTS
    Given I am an anonymous user
    And the cache has been cleared
    And I am on the homepage
    And the response header "Strict-Transport-Security" should contain "max-age=31536000"
