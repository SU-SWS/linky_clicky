Feature: Stanford Jumpstart
  In order to ensure that the Jumpstart Help page is configured correctly
  As a site owner
  I want to check for the correct content and configuration on the Jumpstart Help page

  @api @deploy @dev @prod @live @safe @javascript @jse @stanford @test
  Scenario: Verify that we have the correct Qualtrics form
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/stanford-jumpstart"
    Then I should see "Jumpstart User Guide" in the "Content Body" region
    Then I should see "Request Assistance"

    Then the "a" element should contain  "source=soe"
    Then I should see "source=soe" in the "a" element
    Given I wait 10 seconds


    