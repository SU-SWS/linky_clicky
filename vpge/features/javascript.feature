Feature: Javascript
  In order to ensure that the VPGE website progressive enhancement is functional
  As an end user
  I want to interact with dynamic Javascript elements on the page

@javascript
Scenario: Homepage carousel
  Given I am on the homepage
  When I press "Next Slide" in the "Content Body" region
  And I wait 3 seconds
  Then I should see "2014 DARE Doctoral Fellows Announced" in the "Content Body" region
  When I press "Next Slide" in the "Content Body" region
  And I wait 3 seconds
  Then I should see "Know Thyself" in the "Content Body" region
  When I press "Next Slide" in the "Content Body" region
  And I wait 3 seconds
  Then I should see "SPICE'ing up graduate education" in the "Content Body" region
