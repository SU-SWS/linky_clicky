Feature: Publications
  Ensure publications work.

Scenario: Publication Type Terms
  Given I am on “admin/structure/taxonomy_manager/voc/publication_type”
  Given I am logged in as a user with the "site owner" role
  Then I should see “Book” in the “Content Body” region
  And I should see “Journal Article” in the “Content Body” region

Scenario: Click through to publication
  Given I am on “King Papers Publications”
  When I click “The Papers of Martin Luther King, Jr. Volume I: Called to Serve, January 1929-June 1951” in the “Content Body” region
  Then I should see “Volume I begins with the childhood letters” in the “Content Body” region

Scenario: Publication showing correct image size
  Given I am on “publications/papers-martin-luther-king-jr-volume-iii-birth-new-age-december-1955-december-1956”
  Then I should see “.view-mode-stanford-large-scaled” element in the “Content Body” region

Scenario: Find publication in views bulk operation
Given I am logged in as a user with the "site owner" role
  And I am on "admin/manage/publication"
  When I fill in "Title" with "A Call to Conscience"
  And I press "Filter"
  Then I should see "The Landmark Speeches of Martin Luther King, Jr."
