Feature: Get Help
	In order to ensure that the LBRE-production website Get Help content is visible
	As an anonymous end user 
	I want to check for the existence of page and block content

	@content @live
		Scenario: Viewing page title on Get Help page
		Given I am on "get-help"
		Then I should see "Get Help" in the "Content Head" region

	@content @live
		Scenario: Viewing a postcard block with Quick Links on the Get Help page
		Given I am on "get-help"
		Then I should see the link "Submit a Work Request"
