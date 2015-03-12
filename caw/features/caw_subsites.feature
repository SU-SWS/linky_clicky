Feature: CAW Subsites
  In order to ensure that the CAW website's customizations to subsite are correct
  As an authenticated user
  I want to check the customizations are present.

@javascript
Scenario: See carousel on subsites
  Given I am on "benefits-rewards"
  Then I should see a ".carousel" element

@api @javascript
Scenario: Do not see submitted date and author
  Given I am on "benefits-rewards"
  Then I should not see a "div.submitted" element
