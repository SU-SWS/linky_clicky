Feature: Content
  In order to ensure that the VPGE website has the correct content
  As an end user
  I want to check for the existence of content that should appear

Scenario Outline: Homepage block and footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header          | Region                |
  | About VPGE      | First sidebar         |
  | Gateways        | First sidebar         |
  | Upcoming Events | Content 3 column flow |
  | Recent News     | Content 3 column flow |
  | Partners        | Content 3 column flow |
  | About VPGE      | Footer                |
  | Quick Links     | Footer                |
  | Gateways        | Footer                |
  | Connect         | Footer                |
  | See Also        | Footer                |

Scenario: Academic Guidance content
  Given I am on "academic-guidance/overview"
  Then I should see "Whether you're a student, faculty, or staff member, many resources, people, and opportunities are here to help graduate students take charge of their education and thrive academically" in the "Content Body" region

Scenario: Diversity Initiatives content
  Given I am on "diversity-initiatives/overview"
  Then I should see "Stanford’s over 9,000 graduate students comprise a wonderfully diverse mix of racial, ethnic, sexual orientation, religious, and socioeconomic backgrounds and life experiences" in the "Content Body" region

Scenario: Professional Development content
  Given I am on "professional-development/overview"
  Then I should see "Stanford graduate students are encouraged to learn and practice professional, leadership, and interpersonal skills through workshops and courses organized by the VPGE team and our many campus partners" in the "Content Body" region

Scenario: Interdisciplinary Learning content
  Given I am on "interdisciplinary-learning/overview"
  Then I should see "The VPGE Office encourages students to stretch intellectually and explore all that Stanford offers in interdisciplinary and cross-school learning opportunities" in the "Content Body" region

Scenario: Fellowships and Funding content
  Given I am on "fellowships-funding/overview"
  Then I should see "The VPGE office provides competitive funding" in the "Content Body" region

