Feature: Stanford SoE Helper Collection
  In order to verify the Stanford SoE Helper Collection behaves as expected,
  As an administrator
  I want to be able to verify content.

  @api @dev @destructive
  Scenario: Verify Stanford Collection does not display on an article when unpublished, no duplicates display, and they're all in the right order.
    Given I am logged in as a user with the "administrator" role

  # Create the collection
    And I am on "node/add/stanford-collection"
    When I enter "Collection for Behat" for "title"
    And I enter "Collection for Behat Testing Subtitle" for "Subtitle"
    And I enter "Collection for Behat Testing Superhead" for "Superhead"
    And I enter "Collection for Behat Testing Lead text" for "Lead text"
    And I press the "Save" button
    And I should be on "magazine/collection-behat"

  # Create Magazine Article 1
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 1 for Behat" for "Headline"
    And I enter "Article 1 for Behat Dek" for "Dek"
    And I enter "Article 1 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-1-behat"

  # Create Magazine Article 2
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 2 for Behat" for "Headline"
    And I enter "Article 2 for Behat Dek" for "Dek"
    And I enter "Article 2 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-2-behat"

  # Create Magazine Article 3
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 3 for Behat" for "Headline"
    And I enter "Article 3 for Behat Dek" for "Dek"
    And I enter "Article 3 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-3-behat"

  # Create Magazine Article 4
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 4 for Behat" for "Headline"
    And I enter "Article 4 for Behat Dek" for "Dek"
    And I enter "Article 4 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-4-behat"

  # Create Magazine Article 5
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 5 for Behat" for "Headline"
    And I enter "Article 5 for Behat Dek" for "Dek"
    And I enter "Article 5 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-5-behat"

  # Create Magazine Article 6
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 6 for Behat" for "Headline"
    And I enter "Article 6 for Behat Dek" for "Dek"
    And I enter "Article 6 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-6-behat"

  # Create Magazine Article 7
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 7 for Behat" for "Headline"
    And I enter "Article 7 for Behat Dek" for "Dek"
    And I enter "Article 7 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-7-behat"

  # Create Magazine Article 8
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 8 for Behat" for "Headline"
    And I enter "Article 8 for Behat Dek" for "Dek"
    And I enter "Article 8 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-8-behat"

  # Create Magazine Article 9
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 9 for Behat" for "Headline"
    And I enter "Article 9 for Behat Dek" for "Dek"
    And I enter "Article 9 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-9-behat"

  # Create Magazine Article 10
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 10 for Behat" for "Headline"
    And I enter "Article 10 for Behat Dek" for "Dek"
    And I enter "Article 10 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-10-behat"

  # Create Magazine Article 11
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 11 for Behat" for "Headline"
    And I enter "Article 11 for Behat Dek" for "Dek"
    And I enter "Article 11 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-11-behat"

  # Create Magazine Article 12
    And I am on "node/add/stanford-magazine-article"
    When I enter "Article 12 for Behat" for "Headline"
    And I enter "Article 12 for Behat Dek" for "Dek"
    And I enter "Article 12 for Behat Byline" for "Byline"
    And I select "Collection for Behat" from "Collection"
    And I press the "Save" button
    And I should be on "magazine/article/article-12-behat"

  # Yes! it is part of a collection
    Given I am on "magazine/article/article-2-behat"
    And I should see "Collection for Behat" in the "Top Full Width" region
    And I should see "Collection for Behat" in the "Bottom Full Width" region

  # Verify there are no duplicate articles on a collection page
    Given the cache has been cleared
    Given I am on "magazine/collection-behat"
    Then I should see no duplicate HTML with ".mag-article-title"

  # Verify order of articles on a collection page
    Given I am on "magazine/collection-behat"
    Then I should see all timestamps for ".mag-article-date" in "descending" order

  # Unpublish the collection
    Given I am on "magazine/collection-behat"
    And I click "Edit"
    And I uncheck the box "Publish"
    And I press the "Save" button
    And I should be on "magazine/collection-behat"

  # Verify I cannot see the unpublished collection on the article
    Given I am on "magazine/article/article-2-behat"
    And I should not see "Collection for Behat"

  @api @safe
  Scenario: Check for display on manage pages view
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views"
    Then I should see "Stanford Collection: Manage"
