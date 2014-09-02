Feature: Administration
 In order to ensure that all 3rd party libraries, widget, plugins etc are playing nice.

@api
Scenario: See the twitter block on Clayborne Carson's page
 Given I am on "clayborne-carson"
 Then I should see 1 "#block-bean-twitter-feed-for-clayborne-carso" elements
