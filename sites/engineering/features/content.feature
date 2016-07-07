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

#Scenario: Verify that clicking on the magnifying glass gives user the search box
#  Given I am on the homepage
#  When I click on the element with css selector ".form-item"
#  Then I should see the ".contextual-links-trigger" element in the "#block-stanford-search-api-search-api-search-block" region

#Find another scenario that has search function or input field

#Scenario: Verify that the search function for "internet" works
#  Given I am on the homepage
#  When I fill in "#edit-keywords" with "internet"
#  #And I press the "enter" key in the ".input-medium" field

@safe
Scenario: Verify that the homepage has the correct headings
  Given I am on the homepage
  Then I should see the heading "About the School" in the "Content 3 column flow" region
  And I should see the heading "Recent News" in the "Content 3 column flow" region
  And I should see the heading "Research" in the "Content 3 column flow" region
  And I should see the heading "For Students" in the "Content Lower" region

@safe
Scenario: Verify that the search results are via Solr and not Drupl
  Given I am on "/search"
  Then I should not see an "p[class='search-info']" element

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


@safe
Scenario: Verify that the links take the user to the correct page
  Given I am on the homepage
  Then I should see 1 "a[href='https://www.facebook.com/stanford.engineering/']" element
  And I should see 1 "a[href='https://twitter.com/stanfordeng']" element
  And I should see 1 "a[href='https://www.linkedin.com/groups/126874']" element
  And I should see 1 "a[href='https://www.instagram.com/stanfordeng/']" element
  And I should see 1 "a[href='https://www.youtube.com/user/stanfordeng']" element

@safe
Scenario: Intranet button
  Given I am on the homepage
  Then I should see "Intranet" in the "Footer" region
  And I should see 1 "a[href='https://insidesoe.stanford.edu/']" element

#Scenario:
#  Given I am on "node/148/edit?"
#  #When I click on the a tag
#  Then the "#edit-status" checkbox should be checked


#Scenario: Thumbnail visibility
#  Given I am on the homepage
#  Then I should see the CSS selector "#block-views-9bf4ec9695a5b13242ba5a4898a6b635"


#Scenario: Thumbnail links
#  Given I click on a "thumbnail"
#  Then I should be taken to the respective link

@safe
Scenario: Verify that the buttons in Admissions are the correct style
  Given I am on "/admissions"
  Then I should see the link "Apply"
  And I should see the link "Undergraduate Handbook"
  #Should the a in aid be capitalized?
  And I should see the link "Financial aid"

@safe
Scenario: Verify that the buttons have the correct styles and link to the correct sites
  Given I am on "/admissions"
  Then I should see an "a" element
  And I should see 1 "a[href='http://admission.stanford.edu/basics/index.html']" element
  And I should see 1 "a[href='http://www.stanford.edu/group/ughb/cgi-bin/handbook/index.php/Prospective_Students']" element
  And I should see 1 "a[href='http://financialaid.stanford.edu/undergrad/apply/index.html']" element
  And I should see 3 "a[class='btn']" elements

@safe
Scenario: Verify that the Students section has sidebar links
  Given I am on "/students"
  Then I should see the link "Academics"
  And I should see the link "Support and Resources"
  And I should see the link "Global Engineering Programs"
  And I should see the link "Engineering Diversity Programs"

@safe
Scenario: Verify that the Academics under Students has content
    Given I am on "/students/academics"
    Then I should see the heading "Academics" in the "Content Head" region

@safe
Scenario: Verify that the Support and Resources under Students has content
  Given I am on "/students/support"
  Then I should see the heading "Support and Resources" in the "Content Head" region

@safe
Scenario: Verify that the Support and Resources under Students has content
  Given I am on "/students/programs/global-engineering-programs"
  Then I should see the heading "Global Engineering Programs" in the "Content Head" region

@safe
Scenario: Verify that the Support and Resources under Students has content
  Given I am on "/students/programs/engineering-diversity-programs"
  Then I should see the heading "Engineering Diversity Programs" in the "Content Head" region

@safe
Scenario: Verify that the Research and Faculty page has Faculty section
  Given I am on "/people"
  Then I should see the link "Faculty"

@safe
Scenario: Verify that the Faculty don't have titles
  Given I am on "/people/faculty/grid"
  Then I should see "" in the "div[class='field-content']" element

@safe
Scenario: Verify that the Emeritus Faculty have titles
  Given I am on "/people/emeritus/grid"
  Then I should see 1 or more "div[class='field-content']" elements

@safe
Scenario: Verify that the In Memoriam Faculty have titles
  Given I am on "/people/in-memoriam/grid"
  Then I should see 1 or more "div[class='field-content']" elements

@safe
Scenario: Verify that news stories have images
  Given I am on "/news/recent-news"
  Then the "div[class='postcard-left']" element should contain "img"
  And the "div[class='postcard-image']" element should contain "img"

@safe
Scenario: Verify that there is a left nav on the news page
  Given I am on "/news/recent-news"
  Then I should see the "ul" element in the "Main Content" region

@safe
Scenario: Verify that there is a Twitter widget in the left sidebar
  Given I am on "/news/recent-news"
  Then I should see a "#block-bean-jumpstart-twitter-block" element in the "First sidebar" region

#Test should be written for news article pages
#Scenario: Verify there is no text that says "Banner" nor "Banner Overlay", has "See more news" and no left nav
#  Given I am on "/news/../"
#  And I should not see "Banner" in the "#block-ds-extras-banner" element in the "Top Full Width" region
#  And I should not see "Banner Overlay" in the "#block-ds-extras-banner" element in the "Top Full Width" region
#  And I should see the text "See more news"
#  And I should not see a "#block-bean-jumpstart-twitter-block" element

@safe
Scenario: Verify there is no text that says "Banner" nor "Banner Overlay", has "See more news" and no left nav
  Given I am on "/news/meet-jackrabbot-social-robot"
  Given I am on "/news/stanford-innovation-self-healing-skin-easier-drink-pouring-and-new-kind-jump-rope"
  Given I am on "/news/donald-allen-dunn-1925-2011"
  Given I am on "/news/sarah-moore-doctoral-student-bioengineering"
  Given I am on "/news/arun-majumdar-what-biggest-challenge-21st-century"
  Given I am on "/news/stanford-researchers-survey-protein-family-helps-brain-form-synapses"
  Given I am on "/news/stanford-engineer-produces-free-braille-writer-app/"
  And I should not see "Banner" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should not see "Banner Overlay" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should see the text "See more news"
  And I should not see a "#block-bean-jumpstart-twitter-block" element
  And I should not see an "div[id='sidebar-first']" element

#Test should be written for news article pages
#Scenario: Verify there is "See more news" in /news/..
#  Given I am on "/news/../"
#  Then I should see the text "See more news"

#Test should be written for news article pages
#Scenario: Verify that there is not a left nav in /news/..
#  Given I am on "/news/../"
#  Then I should not see an "div[id='sidebar-first']" element

#Cannot test, ">" is in ::after and idk how to access ::after
#Scenario: Verify that all department links have ">" symbol
#  Given I am on "/research-and-faculty/departments"
#  Then I should see ">" in the "h3" element

@safe
Scenario: Verify that Connect has the correct heading
  Given I am on "/connect"
  Then I should see the heading "Connect" in the "Content Head" region

@safe
Scenario: Verify that the "Give now" button is correct
  Given I am on "/connect/give"
  Then I should see 1 "a[href='http://giving.stanford.edu/goto/enggift']" element
  And I should see 1 "a[class='btn']" elements

@safe
Scenario: Verify that the alumni photo appears
  Given I am on "/connect/alumni"
  Then I should see the "img" element in the "Content Body" region

@safe
Scenario: Verify that the Navigation Menu does not appear anywhere
  Given: I am on "/connect/alumni"
  Then I should see an "button[data-toggle='collapse']" element
