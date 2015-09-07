Feature: Authenticated user
 In order to ensure that the Art and Art History website is editable by its site owners
 As an authenticated user
 I want to check that I can edit the site

@api @safe @live @stanford
Scenario: See the Site Actions menu
 Given I am logged in as a user with the "site owner" role
 And I click "Manage Content" in the "Admin Shortcuts" region
 Then I should see the heading "Manage All Content"

@api @safe @live @site
Scenario: Edit a block
 Given I am logged in as a user with the "site owner" role
 And I am on "block/art-homepage-quote-block/edit"
 Then I should see a "#edit-submit" element

@api @safe @live @site
Scenario: Edit the Department Overview page
 Given I am logged in as a user with the "site owner" role
 And I am on "node/3417/edit"
 Then I should see a "#edit-submit" element

@api @safe @live @site
Scenario: Find news item in views bulk operation
 Given I am logged in as a user with the "site owner" role
 And I am on "admin/manage/stanford_news_item"
 When I fill in "Title" with "Half Tilt Full Lean"
 And I press "Filter"
 Then I should see "presents cross-disciplinary art"

@api @safe @live @site
Scenario: See the Get Help admin page
 Given I am logged in as a user with the "site owner" role
 And I click "Get Help" in the "Admin Shortcuts" region
 Then I should see the heading "Need assistance with your site?"
