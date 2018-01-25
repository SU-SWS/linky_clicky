Feature: Ensure items on the Student Experience landing page appear as expected
  In order to ensure items on the Student Experience landing page appear as expected
  As a Site User
  I want to be able to view all the Student Experience landing page blocks in their appropriate regions

  @safe
  Scenario: Verify users can view the top banner
    Given I am on "students-academics/student-experience"
    Then I should see the "img" element in the "Top Full Width" region
    Then I should see 1 or more ".view-stanford-page-top-banner" elements
    And I should see 1 or more ".image-style-full-width-banner-tall" elements
    Then I should see the text "Scroll to"
    And I should see 1 or more ".page-feat-caption-container" elements

  @safe
  Scenario: Verify users can view all the blocks
    Given I am on "students-academics/student-experience"
    Then I should see 3 or more ".bean-stanford-call-to-action" elements
    Then I should see 3 or more ".bean-stanford-postcard-linked" elements
    Then I should see 2 or more ".block-views" elements

  @safe
  Scenario: Verify users can view the WYSIWYG text
    Given I am on "students-academics/student-experience"
    Then I should see a ".field-name-body" element
    Then I should see the text "Stanford Engineering"

  @safe
  Scenario: Verify users can view the double people spotlight
    Given I am on "students-academics/student-experience"
    Then I should see 1 or more "#block-views-c5911e9acf4c84491e5347eb4df7be0f" elements
    Then I should see the "img" element in the "Content Lower" region
    Then I should see a "a" element in the "Content Lower" region
    Then I should see the text "More Stories"

  @safe
  Scenario: Verify users can view the first postcard linked block
    Given I am on "students-academics/student-experience"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-student-experience-the-campus" element

  @safe
  Scenario: Verify users can view the second postcard linked block
    Given I am on "students-academics/student-experience"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-student-experience-beyond-the-cl" element
    Then I should see the text "Learn About Our Alumni"
    Then I should see the text "Learn About Our Faculty"

  @safe
  Scenario: Verify users can view the third postcard linked block
    Given I am on "students-academics/student-experience"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-student-experience-life-for-grad" element

  @safe
  Scenario: Verify users can view the related links block
    Given I am on "students-academics/student-experience"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-student-experience-related-links" element

  @safe
  Scenario: Verify users can view the events view
    Given I am on "students-academics/student-experience"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-views-stanford-event-featured-block-1" element
