Feature: Ensure items on the Get Involved landing page appear as expected
  In order to ensure items on the Get Involved landing page appear as expected
  As a Site User
  I want to be able to view all the Get Involved landing page blocks in their appropriate regions

  @safe
  Scenario: Verify users can view the top banner
    Given I am on "get-involved"
    Then I should see the "img" element in the "Top Full Width" region
    Then I should see 1 or more ".view-stanford-page-top-banner" elements
    And I should see 1 or more ".image-style-full-width-banner-tall" elements
    Then I should see the text "Scroll to"
    And I should see 1 or more ".page-feat-caption-container" elements

  @safe
  Scenario: Verify users can view all the blocks
    Given I am on "get-involved"
    Then I should see 3 or more ".bean-stanford-call-to-action" elements
    Then I should see 3 or more ".bean-stanford-postcard-linked" elements
    Then I should see 1 or more ".block-views" elements

  @safe
  Scenario: Verify users can view the first postcard linked block
    Given I am on "get-involved"
    Then I should see a "a" element in the "Content Upper" region
    Then I should see a "#block-bean-alumni-connecting-block" element

  @safe
  Scenario: Verify users can view the people spotlight
    Given I am on "get-involved"
    Then I should see 1 or more "#block-views-3e74637834ad4498173a247962038d31" elements
    Then I should see the "img" element in the "Content Upper" region
    Then I should see a "a" element in the "Content Upper" region
    Then I should see the text "More about Alumni"

  @safe
  Scenario: Verify users can view the second postcard linked block
    Given I am on "get-involved"
    Then I should see a "a" element in the "Content Body" region
    Then I should see a "#block-bean-give" element
    Then I should see the text "Learn More"

  @safe
  Scenario: Verify users can view the third postcard linked block
    Given I am on "get-involved"
    Then I should see a "a" element in the "Content Body" region
    Then I should see a "#block-bean-get-involved-collaborations" element
