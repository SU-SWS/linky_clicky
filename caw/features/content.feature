Feature: Content
  In order to ensure that the Cardinal at Work Website has the correct content
  As an end user
  I want to check for the existence of content that should appear
  
Scenario Outline: Homepage block and footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region
  Examples:
  | Header | Region |
  | Explore | Footer |
  | Connect | Footer |
  | Quick Links | Footer |
  | See Also | Footer |

Scenario: Benefits subsite
  Given I am on "benefits-rewards"
  Then I should see "Health" in the "Main Navigation" region
  And I should see "Retirement" in the "Main Navigation" region
  And I should see "Compensation" in the "Main Navigation" region
  And I should see "WorkLife" in the "Main Navigation" region
  And I should see "Tuition" in the "Main Navigation" region
  And I should see "My Benefits" in the "Main Navigation" region
  
Scenario: Learn & Grow subsite
  Given I am on "learn-grow"
  Then I should see "Learn & Grow" in the "Header" region
