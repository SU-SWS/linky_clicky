Feature: Ensure items on the homepage appear as expected
  In order to ensure items on the homepage appear as expected
  As a Site User
  I want to be able to view all the homepage blocks in their appropriate regions

  @safe
  Scenario: Verify users can view the top banner
    Given I am on the homepage
    Then I should see the "img" element in the "Top Full Width" region
    Then I should see 1 or more ".view-stanford-page-top-banner" elements
    And I should see 1 or more ".image-style-full-width-banner-tall" elements
    Then I should see the text "Scroll to"
    And I should see 1 or more ".page-feat-caption-container" elements

  @safe
  Scenario: Verify users can view all the blocks
    Given I am on the homepage
    Then I should see 6 or more ".bean-stanford-postcard" elements
    Then I should see 3 or more ".bean-stanford-postcard-linked" elements
    Then I should see 3 or more ".bean-stanford-call-to-action" elements
    Then I should see 4 or more ".block-views" elements

  @safe
  Scenario: Verify users can view the two column block
    Given I am on the homepage
    Then I should see a "a" element in the "Full Width Middle" region
    Then I should see an "#block-bean-homepage-2-column-1-button-block" element

 @safe
  Scenario: Verify users can view the first postcard linked block
    Given I am on the homepage
    Then I should see a "a" element in the "Full Width Middle" region
    Then I should see a "#block-bean-homepage-pl-block-1" element

 @safe
 Scenario: Verify users can view the second postcard linked block
    Given I am on the homepage
    Then I should see a "a" element in the "Full Width Middle" region
    Then I should see a "#block-bean-homepage-pl-block-3" element

 @safe
 Scenario: Verify users can view the third postcard linked block
    Given I am on the homepage
    Then I should see a "a" element in the "Full Width Middle" region
    Then I should see a "#block-bean-homepage-pl-block-3" element

  @safe
  Scenario: Verify users can view the people spotlight
    Given I am on the homepage
    Then I should see 1 or more ".view-stanford-ppl-spot-fw-banner-quote" elements
    Then I should see the "img" element in the "Full Width Middle" region
    Then I should see a "a" element in the "Full Width Middle" region
    Then I should see the text "More Stories"
