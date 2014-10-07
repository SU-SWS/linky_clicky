Feature: Administration
 In order to ensure that all documents behave and function normally.

@api
Scenario: See and not see the conjectured dates
  Given I am on "king-papers/documents"
  When I fill in "Search documents" with "Announcement, Urging Boycott of Buses"
  And I press "Go"
  Then I should see 1 or fewer "#block-system-main .view-content .views-row" elements
  Then I should see "How do we determine conjectured information?" in the "Content Body" region
  Then I fill in "Search documents" with "Beyond Vietnam"
  And I press "Go"
  Then I should see 1 or fewer "#block-system-main .view-content .views-row" elements
  Then I should not see "How do we determine conjectured information?" in the "Content Body"

Scenario: Publication Type Terms
  Given I am on “admin/structure/taxonomy_manager/voc/publication_type”
  Given I am logged in as a user with the "site owner" role
  Then I should see “Book” in the “Content Body” region
  And I should see “Journal Article” in the “Content Body” region

Scenario: Filter publications by title
  Given I am on “publications”
  When I fill in “Filter by title” with “book title two”
  And I press “Go”
  Then I should see “Sample Publication: Book Title Two” in the “Content Body” region

Scenario: Filter publications by author
  Given I am on “publications”
  When I fill in “Filter by author” with “Marvin C. Ferrell”
  And I press “Go”
  Then I should see “Marvin C. Ferrell” in the “Content Body” region

Scenario: Filter publications by type
  Given I am on “publications”
  When I select “Book” from “Filter by type”
  And I press “Go”
  Then I should see “Sample Publication: Book Title Two” in the “Content Body” region

Scenario: Click through to publication
  Given I am on “Publications”
  When I click “Sample Publication: Book Title Two” in the “Content Body” region
  Then I should see “This is a publication.” in the “Content Body” region

Scenario: Publication showing correct image size
  Given I am on “publications/sample-publication-book-title-two”
  Then I should see “.view-mode-stanford-large-scaled” element in the “Content Body” region
