Feature: Stanford Jumpstart Engineering Get help
  In order to ensure that the Jumpstart Help page is configured correctly
  As a site owner
  I want to check for the correct content and configuration on the Jumpstart Help page

  @api @safe @javascript
  Scenario: Verify that we have the correct Qualtrics form
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/stanford-jumpstart"
    Then I should see "Jumpstart User Guide" in the "Content Body" region
    Then I should see "Request Assistance"
    Then I should see an "a" element
    Then the href in element "a" should contain "source=soe"
