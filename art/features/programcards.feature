Feature: Program cards
 In order to ensure that the Art and Art History website Program Cards are viewable
 As an end user
 I want to interact with dynamic Program Cards on the homepage

Scenario: Homepage program cards content
 Given I am on the homepage
 Then I should see "Art History is a discipline that strives to understand works of art" in the "Content Body" region

@javascript
Scenario: Homepage program cards
 Given I am on the homepage
 When I click "Design" in the "Content Body" region
 And I wait 2 seconds
 Then I should see "Design students learn both how to see and apply basic visual principals across many disciplines" in the "Content Body" region
