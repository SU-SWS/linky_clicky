Feature: Stanford SoE Helper Collection
In order to verify the Stanford SoE Helper Collection behaves as expected,
As an administrator
I want to be able to verify content.

@api @safe
Scenario: Verify order of articles on a collection page
Given I am on "magazine/test-collection-demo-100"
Then I should see all timestamps for ".mag-article-date" in "descending" order
