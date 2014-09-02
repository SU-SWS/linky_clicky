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
