Feature: Stanford Affiliate Organization for JSE
  In order to ensure that the Affiliates pages are viewable
  As a visitor to the site I want to be able to view JSE specific pages.

  @deploy
  Scenario: Affiliates page is visible and link in the main menu
    When I go to "affiliate-organizations"
    Then I should see "Affiliates" in the "First sidebar" region
    Then I should see "Affiliates" in the "Content Head" region
    Then I should see 5 or more ".views-field-field-s-affiliate-image" elements

  @deploy
  Scenario: Affiliates block is visible when site is deployed
    Given I am on the homepage
    Then I should see "Affiliates" in the "Main Bottom" region
    Then I should see 5 or more ".views-field-field-s-affiliate-image" elements