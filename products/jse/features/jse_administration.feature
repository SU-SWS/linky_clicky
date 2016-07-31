Feature: Administration
  In order to ensure that the Jumpstart Engineering website can be configured
  As an administrator, site owner, or editor
  I want to check for the access to and options available on adminstration pages.

  @api @safe
  Scenario: Editor access to Jumpstart help
    Given I am logged in as a user with the "editor" role
    When I go to "admin/stanford-jumpstart/settings"
    Then I should see "Jumpstart User Guide"
    Then I should see "Request Assistance"

  @api @safe
  Scenario: Site Owner access to Jumpstart help
    Given I am logged in as a user with the "site owner" role
    When I go to "admin/stanford-jumpstart/settings"
    Then I should see "Jumpstart User Guide"
    Then I should see "Request Assistance"

  @api @safe
  Scenario: Administrator access to Jumpstart help
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/stanford-jumpstart/settings"
    Then I should see "Jumpstart User Guide"
    When I go to "admin/stanford-jumpstart"
    Then I should see "Request Assistance"


  @api @dev
  Scenario: Help text and request assistance url changes
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/stanford-jumpstart/settings"
    And I track variable "stanford_jumpstart_help_settings"
    Then I fill in "Help text" with "My new and wonderful help text."
    Then I fill in "Request assistance url" with "https://test.stanford.edu"
    Then I press "Save"
    Then I should see "Your settings have been saved."


  #TODO: Do we still need this test?
  #@api @dev @destructive
  #Scenario: Help text and request assistance url changes
  #  Given I am logged in as a user with the "administrator" role
  #  When I go to "admin/stanford-jumpstart/settings"
  #  And I track variable "stanford_jumpstart_help_settings"
  #  Then I fill in "Help text" with "My new and wonderful help text."
  #  Then I fill in "Request assistance url" with "https://test.stanford.edu"
  #  Then I press "Save"
  #  Then I should see "Your settings have been saved."
  #  When I go to "admin/stanford-jumpstart"
  #  Then I should see "My new and wonderful help text."
  #  Then I should see 1 "a[href='https://test.stanford.edu']" element
