Feature: Javascript
  In order to ensure that the English website progressive enhancement is functional
  As an end user
  I want to interact with dynamic Javascript elements on the page

@javascript
Scenario: Homepage carousel
  Given I am on the homepage
  When I click "next" in the "Main Top" region
  Then I should see "English is one of the piloting departments offering undergraduates a joint major that integrates the humanities and computer science in fall 2014" in the "Main Top" region
