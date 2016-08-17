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
  Then I should see "Academic study and research are at the heart of the graduate experience at Stanford. Many resources are available to help graduate students thrive academically and take charge of their educations." in the "Content Body" region

Scenario: Diversity Initiatives content
  Given I am on "diversity-initiatives/overview"
  Then I should see "Diversity is a fundamental part of excellence in education at Stanford. With over 9,000 students, our graduate schools draw from a wonderfully diverse mix of backgrounds, identities, and life experiences." in the "Content Body" region

Scenario: Professional Development content
  Given I am on "professional-development/overview"
  Then I should see "Professional skills learned in graduate school can form the basis of a great career. Together with campus partners, the VPGE office equips graduates with the leadership, management, and interpersonal skills they need to excel in their chosen fields." in the "Content Body" region

Scenario: Interdisciplinary Learning content
  Given I am on "interdisciplinary-learning/overview"
  Then I should see "Stanford's open academic climate naturally fosters collaboration among fields. Through VPGE, graduate students find funding for interdisciplinary projects, connect with students from other departments, and enroll in programs that cross disciplinary lines." in the "Content Body" region

Scenario: Fellowships and Funding content
  Given I am on "fellowships-funding/overview"
  Then I should see "The VPGE office provides competitive funding" in the "Content Body" region

