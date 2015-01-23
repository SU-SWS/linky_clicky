Feature: Search API
  In order to ensure end users on the CAW website can search and find content
  As an anonymous user
  I want to check that I can use the search form and block

# Search block in top right
@api
Scenario: Search block is visible to anonymous users
  Given I am on the home page
  Then I should see a "stanford-search-api-search-block-form" element in the "Search Box" region

# Search page exists with default text and search input
@api
Scenario: Search page is visible to anonymous users
  Given I am on "search/content"
  Then I should see a "edit-search-api-views-fulltext" element in the "Content Body" region
  And I should see "Enter text in the keyword search field to begin your content search" in the "Content Body" region

# Search something lame with no results and have helpful text

# Search for results

# Search for results and have facets available

# Search for results and have facets then click a facet and check results

# Search facet blocks are displaying with checkbox widget

# Search facet links in view results work as facets

# Search results have highlighting

# Search with many results has pager after 25 items

# Search autocomplete is displaying results
