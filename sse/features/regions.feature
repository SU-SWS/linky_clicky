Feature: jsp
  In order to prove that Drupal and behat are working properly
  As a developer
  I need to use these testing scenarios

Scenario: Test the ability to find the heading in the Footer region
  Given I am on the homepage
  Then I should see the heading "Flexible Footer Block" in the "Footer" region

Scenario: Test the ability to find the heading in the Flexible Sidebar block
  Given I am on the homepage
  Then I should see the heading "Flexible Sidebar Block" in the "First sidebar" region