Feature: Ensure items on the About landing page appear as expected
  In order to ensure items on the About landing page appear as expected
  As a Site User
  I want to be able to view all the About landing page blocks in their appropriate regions

  Background:
    Given I am on "about/soe-future"

  @safe
  Scenario: Verify users can view all the blocks
    Then I should see 6 or more ".bean-stanford-postcard-linked" elements

  @safe
  Scenario: Verify users can view the first postcard linked block
    Then I should see a "#block-bean-soe-future-about-the-soe-future" element
    Then I should see a "#block-bean-soe-future-about-the-soe-future.span6.next-row.well.no-padding" element

  @safe
  Scenario: Verify users can view the second postcard linked block
    Then I should see a "#block-bean-soe-future-the-impact" element
    Then I should see a "#block-bean-soe-future-the-impact.span6.well.no-padding" element

  @safe
  Scenario: Verify users can view the Research postcard linked block
    Then I should see a "#block-bean-soe-future-the-impact" element
    Then I should see a "#block-bean-soe-future-the-impact.span6.well.no-padding" element

