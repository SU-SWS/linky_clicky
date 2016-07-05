Feature: Content
  In order to ensure that the School of Engineering website has the correct content
  As an end user
  I want to check for the existence of content that should appear

@safe
Scenario Outline: Homepage block and footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header                            | Region                |
  | Departments, Institutes and Labs  | Content 3 column flow |
  | Recent News                       | Content 3 column flow |
  | Research                          | Content 3 column flow |

#  | Department Bookshelf | Main Lower            |
#  | Degrees and Courses  | Footer                |
#  | News & Events        | Footer                |
#  | Affiliated Programs  | Footer                |

#Scenario: About page content
#  Given I am on "about"
#  Then I should see "One of the founding departments of Stanford University in 1891, the English department is the cornerstone of the humanities at Stanford" in the "Content Body" region

#Scenario: People page content
#  Given I am on "people"
#  Then I should see "John Bender" in the "Content Body" region

#Scenario: People page search
#  Given I am on "people"
#  When I fill in "Search faculty by name" with "Cohen"
#  And I press "Go"
#  Then I should see "Margaret Cohen" in the "Content Body" region

#Scenario: Courses page content
#  Given I am on "courses"
#  Then I should see the heading "Current Courses" in the "Content" region

#Scenario: Degree Programs page content
#  Given I am on "degree-programs/overview-degree-programs"
#  Then I should see "Stanford’s English curriculum features a team-taught, yearlong core sequence" in the "Content Body" region

#Scenario: Department Bookshelf page content
#  Given I am on "bookshelf"
#  Then I should see the heading "Faculty Publications" in the "Content Body" region

#Scenario: News page content
#  Given I am on "news"
#  Then I should see the heading "Wilfred Stone, professor emeritus of English passes away at 97" in the "Content" region

#Scenario: Events page content
#  Given I am on "events"
#  Then I should see the heading "Upcoming Events" in the "Content Body" region
#  And I should see "View Past Events" in the "Content Body" region

@safe
Scenario: Verify that the magnifying glass is visible
  Given I am on the homepage
  Then I should see a "#block-stanford-search-api-search-api-search-block" element
  And I should see the "#block-stanford-search-api-search-api-search-block" element in the "Main Navigation" region

#Figure out which HTML element has the click function for "When I click..."
@km
Scenario: Verify that clicking on the magnifying glass gives user the search box
  Given I am on the homepage
  When I click on the element with css selector ".form-item"
  Then I should see the ".contextual-links-trigger" element in the "#block-stanford-search-api-search-api-search-block" region

#Find another scenario that has search function or input field
@km
Scenario: Verify that the search function for "internet" works
  Given I am on the homepage
  When I fill in "#edit-keywords" with "internet"
  #And I press the "enter" key in the ".input-medium" field

@safe
Scenario: Verify that the homepage has the correct headings
  Given I am on the homepage
  Then I should see the heading "About the School" in the "Content 3 column flow" region
  And I should see the heading "Recent News" in the "Content 3 column flow" region
  And I should see the heading "Research" in the "Content 3 column flow" region
  And I should see the heading "For Students" in the "Content Lower" region

@safe
Scenario: Verify that the full width banner at the top of the page is visibile
  Given I am on the homepage
  Then I should see the "img" element in the "Top Full Width" region

@safe
Scenario: Verify that the Stanford footer logo image is visible
  Given I am on the homepage
  Then I should see the "img" element in the "Footer" region

@safe
Scenario: Verify that the Social Media links exist
  Given I am on the homepage
  Then I should see the link "Facebook" in the "Footer" region
  And I should see the link "Twitter" in the "Footer" region
  And I should see the link "LinkedIn" in the "Footer" region
  And I should see the link "Instagram" in the "Footer" region
  And I should see the link "YouTube" in the "Footer" region


Scenario: Clicking Links
Given I am on the homepage
  When I click "Facebook"
  Then I should get a "https://www.facebook.com/stanford.engineering/"
  When I click "Twitter"
  Then I should be on "https://twitter.com/stanfordeng"
  When I click "LinkedIn"
  Then I should be on "https://www.linkedin.com/groups/126874"
  When I click "Instagram"
  Then I should be on "https://www.instagram.com/stanfordeng/"
  When I click "YouTube"
  Then I should be on "https://www.youtube.com/user/stanfordeng"

Scenario: Intranet button
  Given I am on the homepage
  Then I should see the "intranet" button
  And I should see that "intranet" has the right "size" and "width"

Scenario: Intranet link
  Given I click on "intranet"
  Then I should be taken to "insidesoe.stanford.edu"

Scenario:
  Given I am on the homepage
  Then I should see that the "homepage" "node" is published

Scenario: Thumbnail visibility
  Given I am on the homepage
  Then I should see that "thumbnail" is next to "news"

Scenario: Thumbnail links
  Given I click on a "thumbnail"
  Then I should be taken to the respective link
