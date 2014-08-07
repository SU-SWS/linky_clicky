Feature: Content
  In order to ensure that the Art and Art History Website has the correct content
  As an end user
  I want to check for the existence of content that should appear

Scenario Outline: Homepage block and footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region
 Examples:
  | Header                     | Region                |
  | Department Programs        | Content Body          |
  | News                       | Content 4 column flow |
  | Featured Events            | Content 4 column flow |
  | Current Exhibitions        | Content 4 column flow |
  | Department Work            | Content Lower         |
  | About                      | Footer                |
  | Programs                   | Footer                |
  | News and Events            | Footer                |
  | Information For            | Footer                |
  | Art & Architecture Library | Footer                |

Scenario: About the Department page content
  Given I am on "about/department-overview"
  Then I should see "Degrees Offered" in the "Content Body" region

Scenario: Contact and Location page content
  Given I am on "about/contact-location"
  Then I should see "Mailing Address" in the "Content Body" region

Scenario: PhD Art History page content
  Given I am on "academics/graduate-programs/phd-art-history"
  Then I should see "The doctoral program in the History of Art" in the "Content Body" region