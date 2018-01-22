Feature: Ensure items on the Admission and Aid landing page appear as expected
  In order to ensure items on the Admission and Aid landing page appear as expected
  As a Site User
  I want to be able to view all the Admission and Aid landing page blocks in their appropriate regions

  @safe
  Scenario: Verify users can view the top banner
    Given I am on "admission-aid"
    Then I should see the "img" element in the "Top Full Width" region
    Then I should see 1 or more ".view-stanford-page-top-banner" elements
    And I should see 1 or more ".image-style-full-width-banner-tall" elements
    Then I should see the text "Scroll to"
    And I should see 1 or more ".page-feat-caption-container" elements

  @safe
  Scenario: Verify users can view all the blocks
    Given I am on "admission-aid"
    Then I should see 3 or more ".bean-stanford-call-to-action" elements
    Then I should see 5 or more ".bean-stanford-postcard-linked" elements
    Then I should see 1 or more ".block-views" elements

  @safe
  Scenario: Verify users can view the WYSIWYG text
    Given I am on "admission-aid"
    Then I should see a ".field-name-body" element
    Then I should see the text "Admission and financial aid"

  @safe
  Scenario: Verify users can view the first postcard linked block
    Given I am on "admission-aid"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-admission-aid-undergraduates" element
    Then I should see the text "Apply"

  @safe
  Scenario: Verify users can view the second postcard linked block
    Given I am on "admission-aid"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-admission-aid-graduates" element
    Then I should see the text "Graduate Admissions"

  @safe
  Scenario: Verify users can view the third postcard linked block
    Given I am on "admission-aid"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-admission-aid-coterm" element

  @safe
  Scenario: Verify users can view the fourth postcard linked block
    Given I am on "admission-aid"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-admission-aid-financial-aid" element

  @safe
  Scenario: Verify users can view the fifth postcard linked block
    Given I am on "admission-aid"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-admission-aid-course-planning" element

  @safe
  Scenario: Verify users can view the people spotlight
    Given I am on "admission-aid"
    Then I should see 1 or more "#block-views-3e74637834ad4498173a247962038d31" elements
    Then I should see the "img" element in the "Content Lower" region
    Then I should see a "a" element in the "Content Lower" region
