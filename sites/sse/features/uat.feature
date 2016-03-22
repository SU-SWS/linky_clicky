Feature: uat
  Testing scenarios for UAT

Scenario: User
  Given I am on "/user"
  Then I should see the text "Log in with WebAuth" in the "Content" region

@api
Scenario: Entity API
  Given I am logged in as a user with the "administrator" role
  And I am on "/help/entity/README.txt"
  Then I should see the text "This module extends the entity API of Drupal core in order to provide a unified" in the "Content" region
  
@api
Scenario: XML Sitemap
  Given I am logged in as a user with the "administrator" role
  And I run cron
  When I go to "/sitemap.xml"
  Then I should get a "200" HTTP response

Scenario: User login
  Given I am on "/user"
  When I fill in "Local Drupal Username" with "foo"
    And I fill in "Local Drupal Password" with "bar"
    And I press "Log in"
  Then I should see "Sorry, unrecognized username or password"