Feature: Javascript
  In order to ensure that the VPGE website progressive enhancement is functional
  As an end user
  I want to interact with dynamic Javascript elements on the page

@javascript @live @safe
Scenario: Homepage carousel
  Given I am on the homepage
  Then I should see "SPICE'ing up graduate education" in the "Content Body" region
  When I press "Next Slide" in the "Content Body" region
  And I wait 3 seconds
  Then I should see "No time to attend a workshop?" in the "Content Body" region
  When I press "Next Slide" in the "Content Body" region
  And I wait 3 seconds
  Then I should see "Discover the Stanford Graduate Summer Institute" in the "Content Body" region
  When I press "Next Slide" in the "Content Body" region
  And I wait 3 seconds
  Then I should see "Fellowship questions?" in the "Content Body" region
  When I press "Previous Slide" in the "Content Body" region
  And I wait 3 seconds
  Then I should see "Discover the Stanford Graduate Summer Institute" in the "Content Body" region
