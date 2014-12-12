Feature: Content
  In order to ensure that the Cardinal at Work Website has the correct content
  As an end user
  I want to check for the existence of content that should appear

Scenario: Benefits subsite
  Given I am on "benefits-rewards"
  Then I should see "Health" in the "Navigation" region
  
Scenario: Learn & Grow subsite
  Given I am on "learn-grow"
  Then I should see "Learn & Grow" in the "Header" region
