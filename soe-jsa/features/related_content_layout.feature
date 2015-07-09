Feature: Related Content with SoE-JSA layouts
  In order to ensure that content for SoE-JSA are configured correctly
  As an end user
  I want to check for the existence of content that should appear

  Scenario: Upcoming event page layout
   Given I am on "news-events/upcoming-events"
   Then I should see a ".views-exposed-form" element
   And I should see "By Related Content" in the "First sidebar" region

  Scenario: Related Content page layout
   Given I am on "academics/undergraduate-programs"
   And I should see "Related Upcoming Events" in the "Second sidebar" region
   And I should see "Related News" in the "Second sidebar" region
   And I should see "Related People" in the "Content Lower" region


