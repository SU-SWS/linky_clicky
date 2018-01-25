Feature: Ensure items on the AA landing page appear as expected
  In order to ensure items on the AA landing page appear as expected
  As a Site User
  I want to be able to view all the AA landing page blocks in their appropriate regions

  @safe
  Scenario: Verify users can view the top banner
    Given I am on "faculty-research/departments/aeronautics-astronautics"
    Then I should see the "img" element in the "Top Full Width" region
    Then I should see 1 or more ".view-stanford-page-top-banner" elements
    And I should see 1 or more ".image-style-full-width-banner-tall" elements
    Then I should see the text "Scroll to"
    And I should see 1 or more ".page-feat-caption-container" elements

  @safe
  Scenario: Verify users can view all the blocks
    Given I am on "faculty-research/departments/aeronautics-astronautics"
    Then I should see 3 or more ".bean-stanford-postcard" elements
    Then I should see 3 or more ".bean-stanford-postcard-linked" elements
    Then I should see 1 or more ".block-views" elements

  @safe
  Scenario: Verify users can view the WYSIWYG text
    Given I am on "faculty-research/departments/aeronautics-astronautics"
    Then I should see a ".field-name-body" element
    Then I should see the text "The Aeronautics"

  @safe
  Scenario: Verify users can view the first postcard linked block
    Given I am on "faculty-research/departments/aeronautics-astronautics"
    Then I should see a "a" element in the "Content Lower" region
    Then I should see a "#block-bean-aeronautics-astronautics-what-a" element

  @safe
  Scenario: Verify users can view the people spotlight
    Given I am on "faculty-research/departments/aeronautics-astronautics"
    Then I should see 1 or more ".view-stanford-people-spotlight-h-card" elements
    Then I should see the "img" element in the "Content Lower" region
    Then I should see a "a" element in the "Content Lower" region
    Then I should see the text "More Stories"

  @safe
  Scenario: Verify users can view the second postcard linked block
    Given I am on "faculty-research/departments/aeronautics-astronautics"
    Then I should see a "a" element in the "Content Bottom" region
    Then I should see a "#block-bean-aeronautics-astronautics-new-un" element

  @safe
  Scenario: Verify users can view the third postcard linked block
    Given I am on "faculty-research/departments/aeronautics-astronautics"
    Then I should see a "a" element in the "Content Bottom" region
    Then I should see a "#block-bean-aeronautics-astronautics-what-i" element

  @safe
  Scenario: Verify users can view the Research Themes block
    Given I am on "faculty-research/departments/aeronautics-astronautics"
    Then I should see a "a" element in the "Content Bottom" region
    Then I should see a "#block-bean-aeronautics-astronautics-resear" element

  @safe
  Scenario: Verify users can view the Recent News view
    Given I am on "faculty-research/departments/aeronautics-astronautics"
    Then I should see a "a" element in the "Content Bottom" region
    Then I should see a "#block-views-98ef3755ed7cc9ac83eba0d66243ce4c" element
    Then I should see the text "Visit the"
