Feature: Content
  In order to ensure that the School of Engineering website has the correct content
  As an end user
  I want to check for the existence of content that should appear

@live
Scenario Outline: Homepage block and footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header                            | Region                |
  | Departments, Institutes and Labs  | Content 3 column flow |
  | Recent News                       | Content 3 column flow |
  | Research                          | Content 3 column flow |

@live
Scenario: Verify that the magnifying glass is visible
  Given I am on the homepage
  Then I should see a "#block-stanford-search-api-search-api-search-block" element
  And I should see the "#block-stanford-search-api-search-api-search-block" element in the "Main Navigation" region

@live
Scenario: Verify that the homepage has the correct headings
  Given I am on the homepage
  Then I should see the heading "About the School" in the "Content 3 column flow" region
  And I should see the heading "Recent News" in the "Content 3 column flow" region
  And I should see the heading "Research" in the "Content 3 column flow" region
  And I should see the heading "For Students" in the "Content Lower" region

@live
Scenario: Verify that the search results are via Solr and not Drupl
  Given I am on "/search"
  Then I should not see an "p[class='search-info']" element

@live
Scenario: Verify that the full width banner at the top of the page is visibile
  Given I am on the homepage
  Then I should see the "img" element in the "Top Full Width" region

@live
Scenario: Verify that the Stanford footer logo image is visible
  Given I am on the homepage
  Then I should see an "img[src='https://engineering.stanford.edu/sites/default/files/styles/large-scaled/public/soe_footer-logo_01.png?itok=1oHxyyBb']" element

@live
Scenario: Verify that the Social Media links exist
  Given I am on the homepage
  Then I should see the link "Facebook" in the "Footer" region
  And I should see the link "Twitter" in the "Footer" region
  And I should see the link "LinkedIn" in the "Footer" region
  And I should see the link "Instagram" in the "Footer" region
  And I should see the link "YouTube" in the "Footer" region


@live
Scenario: Verify that the links take the user to the correct page
  Given I am on the homepage
  Then I should see 1 "a[href='https://www.facebook.com/stanford.engineering/']" element
  And I should see 1 "a[href='https://twitter.com/stanfordeng']" element
  And I should see 1 "a[href='https://www.linkedin.com/groups/126874']" element
  And I should see 1 "a[href='https://www.instagram.com/stanfordeng/']" element
  And I should see 1 "a[href='https://www.youtube.com/user/stanfordeng']" element

@live
Scenario: Intranet button
  Given I am on the homepage
  Then I should see "Intranet" in the "Footer" region
  And I should see 1 "a[href='https://insidesoe.stanford.edu/']" element

@live
Scenario: Verify that the buttons in Admissions are the correct style
  Given I am on "/admissions"
  Then I should see the link "Apply"
  And I should see the link "Undergraduate Handbook"
  #Should the a in aid be capitalized?
  And I should see the link "Financial aid"

@live
Scenario: Verify that the buttons have the correct styles and link to the correct sites
  Given I am on "/admissions"
  Then I should see an "a" element
  And I should see 1 "a[href='http://admission.stanford.edu/basics/index.html']" element
  And I should see 1 "a[href='http://www.stanford.edu/group/ughb/cgi-bin/handbook/index.php/Prospective_Students']" element
  And I should see 1 "a[href='http://financialaid.stanford.edu/undergrad/apply/index.html']" element
  And I should see 3 "a[class='btn']" elements

@live
Scenario: Verify that the Students section has sidebar links
  Given I am on "/students"
  Then I should see the link "Academics"
  And I should see the link "Support and Resources"
  And I should see the link "Global Engineering Programs"
  And I should see the link "Engineering Diversity Programs"

@live
Scenario: Verify that the Academics under Students has content
    Given I am on "/students/academics"
    Then I should see the heading "Academics" in the "Content Head" region

@live
Scenario: Verify that the Support and Resources under Students has content
  Given I am on "/students/support"
  Then I should see the heading "Support and Resources" in the "Content Head" region

@live
Scenario: Verify that the Support and Resources under Students has content
  Given I am on "/students/programs/global-engineering-programs"
  Then I should see the heading "Global Engineering Programs" in the "Content Head" region

@live
Scenario: Verify that the Support and Resources under Students has content
  Given I am on "/students/programs/engineering-diversity-programs"
  Then I should see the heading "Engineering Diversity Programs" in the "Content Head" region

@live
Scenario: Verify that the Research and Faculty page has Faculty section
  Given I am on "/people"
  Then I should see the link "Faculty"

@live
Scenario: Verify that the Faculty don't have titles
  Given I am on "/people/faculty/grid"
  Then I should see "" in the "div[class='field-content']" element

@live
Scenario: Verify that the Emeritus Faculty have titles
  Given I am on "/people/emeritus/grid"
  Then I should see 1 or more "div[class='field-content']" elements

@live
Scenario: Verify that the In Memoriam Faculty have titles
  Given I am on "/people/in-memoriam/grid"
  Then I should see 1 or more "div[class='field-content']" elements

@live
Scenario: Verify that news stories have images
  Given I am on "/news/recent-news"
  Then the "div[class='postcard-left']" element should contain "img"
  And the "div[class='postcard-image']" element should contain "img"

@live
Scenario: Verify that there is a left nav on the news page
  Given I am on "/news/recent-news"
  Then I should see the "ul" element in the "Main Content" region

@live
Scenario: Verify that there is a Twitter widget in the left sidebar
  Given I am on "/news/recent-news"
  Then I should see a "#block-bean-jumpstart-twitter-block" element in the "First sidebar" region

@live
Scenario: Verify there is no text that says "Banner" nor "Banner Overlay", has "See more news" and no left nav
  Given I am on "/news/meet-jackrabbot-social-robot"
  And I should not see "Banner" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should not see "Banner Overlay" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should see the text "See more news"
  And I should not see a "#block-bean-jumpstart-twitter-block" element
  And I should not see an "div[id='sidebar-first']" element
  Given I am on "/news/stanford-innovation-self-healing-skin-easier-drink-pouring-and-new-kind-jump-rope"
  And I should not see "Banner" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should not see "Banner Overlay" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should see the text "See more news"
  And I should not see a "#block-bean-jumpstart-twitter-block" element
  And I should not see an "div[id='sidebar-first']" element
  Given I am on "/news/donald-allen-dunn-1925-2011"
  And I should not see "Banner" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should not see "Banner Overlay" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should see the text "See more news"
  And I should not see a "#block-bean-jumpstart-twitter-block" element
  And I should not see an "div[id='sidebar-first']" element
  Given I am on "/news/sarah-moore-doctoral-student-bioengineering"
  And I should not see "Banner" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should not see "Banner Overlay" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should see the text "See more news"
  And I should not see a "#block-bean-jumpstart-twitter-block" element
  And I should not see an "div[id='sidebar-first']" element
  Given I am on "/news/arun-majumdar-what-biggest-challenge-21st-century"
  And I should not see "Banner" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should not see "Banner Overlay" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should see the text "See more news"
  And I should not see a "#block-bean-jumpstart-twitter-block" element
  And I should not see an "div[id='sidebar-first']" element
  Given I am on "/news/stanford-researchers-survey-protein-family-helps-brain-form-synapses"
  And I should not see "Banner" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should not see "Banner Overlay" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should see the text "See more news"
  And I should not see a "#block-bean-jumpstart-twitter-block" element
  And I should not see an "div[id='sidebar-first']" element
  Given I am on "/news/stanford-engineer-produces-free-braille-writer-app/"
  And I should not see "Banner" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should not see "Banner Overlay" in the "#block-ds-extras-banner" element in the "Top Full Width" region
  And I should see the text "See more news"
  And I should not see a "#block-bean-jumpstart-twitter-block" element
  And I should not see an "div[id='sidebar-first']" element

@live
Scenario: Verify that Connect has the correct heading
  Given I am on "/connect"
  Then I should see the heading "Connect" in the "Content Head" region

@live
Scenario: Verify that the "Give now" button is correct
  Given I am on "/connect/give"
  Then I should see 1 "a[href='http://giving.stanford.edu/goto/enggift']" element
  And I should see 1 "a[class='btn']" elements

@live
Scenario: Verify that the alumni photo appears
  Given I am on "/connect/alumni"
  Then I should see the "img" element in the "Content Body" region

@live
Scenario: Verify that the Navigation Menu does not appear anywhere
  Given: I am on "/connect/alumni"
  Then I should see an "button[data-toggle='collapse']" element
