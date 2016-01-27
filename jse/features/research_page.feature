Feature: Research page 
  In order to ensure that the Jumpstart Research page content is visible
  As an end user
  I want to check for the existence of the page

  @content @deploy @prod
  Scenario: Check content of the research page
    Given I am on "research"
    Then I should see "This is your Research page" in the "Content Body" region
    
