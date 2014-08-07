Feature: Stanford Date Formats
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Date Formats module is working properly

Background:
  Given the "stanford_date_formats" module is enabled
    And the cache has been cleared

@api
Scenario Outline: Stanford Date Formats
  Given I am logged in as a user with the "administrator" role
  And I am on "admin/config/regional/date-time"
  Then I should see "<Date Type>"

  Examples:
  | Date Type                                      |
  | Time                                           |
  | Month Date, Year                               |
  | Date, Year - Time                              |
  | Date, Year - Time with space                   |
  | Two Digit Day                                  |
  | Short Month                                    |
  | Short Month Day                                |
  | Month Two-Digit Day, Year                      |
  | Long Day of Week, Date, Year                   |
  | Long Day of Week, Date, Year - Time            |
  | Long Day of Week, Date, Year - Time with space |
  | Short Month Day \| Time                        |
  | Short Month Day \| Time with space             |