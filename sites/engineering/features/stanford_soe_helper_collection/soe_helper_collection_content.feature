Feature: Stanford SoE Helper Collection
In order to verify the Stanford SoE Helper Collection behaves as expected,
As an administrator
I want to be able to verify content.

@api @safe
Scenario: Verify order of articles on a collection page
Given I am on "magazine/test-collection-demo-100"
Then I should see all timestamps for ".mag-article-date" in "descending" order

@api @dev @destructive
Scenario: Verify Stanford Collection does not display on an article when unpublished
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

# Yes! it is part of a collection
And I should see "Collection for Behat" in the "Top Full Width" region
And I should see "Collection for Behat" in the "Bottom Full Width" region

# Unpublish the collection
Given I am on "magazine/collection-behat"
And I click "Edit"
And I uncheck the box "Publish"
And I press the "Save" button
And I should be on "magazine/collection-behat"

# Verify I cannot see the unpublished collection on the article
Given I am on "magazine/article/article-2-behat"
And I should not see "Collection for Behat"

# Delete all the things
Given I am on "magazine/article/article-1-behat"
And I click "Edit"
And I press "Delete"
And I press "Delete"
Given I am on "magazine/article/article-2-behat"
And I click "Edit"
And I press "Delete"
And I press "Delete"
Given I am on "magazine/collection-behat"
And I click "Edit"
And I press "Delete"
And I press "Delete"

@api @safe
Scenario: Check for display on manage pages view
Given I am logged in as a user with the "administrator" role
And I am on "admin/structure/views"
Then I should see "Stanford Collection: Manage"
