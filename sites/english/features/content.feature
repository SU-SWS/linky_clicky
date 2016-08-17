Feature: Content
  In order to ensure that the English Department website has the correct content
  As an end user
  I want to check for the existence of content that should appear

Scenario Outline: Homepage block and footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header               | Region                |
  | Prospective student? | Content 4 column flow |
  | Recent News          | Content 4 column flow |
  | Upcoming Events      | Content 4 column flow |
  | Affiliated Programs  | Content 4 column flow |
  | Department Bookshelf | Main Lower            |
  | About                | Footer                |
  | Degrees and Courses  | Footer                |
  | Department Bookshelf | Footer                |
  | News & Events        | Footer                |
  | Information For      | Footer                |
  | Affiliated Programs  | Footer                |

Scenario: About page content
  Given I am on "about"
  Then I should see "One of the founding departments of Stanford University in 1891, the English department is the cornerstone of the humanities at Stanford" in the "Content Body" region

Scenario: People page content
  Given I am on "people"
  Then I should see "John Bender" in the "Content Body" region

Scenario: People page search
  Given I am on "people"
  When I fill in "Search faculty by name" with "Cohen"
  And I press "Go"
  Then I should see "Margaret Cohen" in the "Content Body" region

Scenario: Courses page content
  Given I am on "courses"
  Then I should see the heading "Current Courses" in the "Content" region

Scenario: Degree Programs page content
  Given I am on "degree-programs/overview-degree-programs"
  Then I should see "Stanford’s English curriculum features a team-taught, yearlong core sequence" in the "Content Body" region

Scenario: Department Bookshelf page content
  Given I am on "bookshelf"
  Then I should see the heading "Faculty Publications" in the "Content Body" region

Scenario: News page content
  Given I am on "news"
  Then I should see the heading "Stanford lecturer wins poetry prize" in the "Content" region

Scenario: Events page content
  Given I am on "events"
  Then I should see the heading "Upcoming Events" in the "Content Body" region
  And I should see "See Past Events" in the "Content Body" region

