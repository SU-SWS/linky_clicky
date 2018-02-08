Feature: Ensure items on the Academics landing page appear as expected
  In order to ensure items on the Academics landing page appear as expected
  As a Site User
  I want to be able to view all the Academics landing page blocks in their appropriate regions

  @safe
  Scenario: Verify users can view all the blocks
    Given I am on "students-academics/academics"
    Then I should see 3 or more ".bean-stanford-call-to-action" elements
    Then I should see 4 or more ".bean-stanford-postcard-linked" elements
    Then I should see 1 or more ".bean-stanford-postcard" elements
    Then I should see 1 or more ".block-views" elements

  @safe
  Scenario: Verify users can view the WYSIWYG text
    Given I am on "students-academics/academics"
    Then I should see a ".field-name-body" element
    Then I should see the text "Stanford Engineering"

  @safe
  Scenario: Verify users can view the first postcard linked block
    Given I am on "students-academics/academics"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-academics-degree-programs-for-un" element

  @safe
  Scenario: Verify users can view the second postcard linked block
    Given I am on "students-academics/academics"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-academics-degree-programs-for-gr" element

  @safe
  Scenario: Verify users can view the third postcard linked block
    Given I am on "students-academics/academics"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-academics-undergraduate-student-" element

  @safe
  Scenario: Verify users can view the fourth postcard linked block
    Given I am on "students-academics/academics"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-academics-research-opportunities" element

  @safe
  Scenario: Verify users can view the related links block
    Given I am on "students-academics/academics"
    Then I should see a "a" element in the "Content Bottom" region
    Then I should see a "#block-bean-academics-related-links" element

  @safe
  Scenario: Verify users can view the people spotlight
    Given I am on "students-academics/academics"
    Then I should see 1 or more "#block-views-34dd9e86105914751f93e820c6f1734e" elements
    Then I should see the "img" element in the "Content Bottom" region
    Then I should see a "a" element in the "Content Bottom" region
