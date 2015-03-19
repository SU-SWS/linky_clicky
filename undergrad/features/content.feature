Feature: Content
  In order to ensure that the Undergrad website has the correct content
  As an end user
  I want to check for the existence of content that should appear

Scenario Outline: Homepage block and footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header                 | Region                |
  | Undergrad Events       | Content 3 column flow |
  | Spotlight              | Content 3 column flow |
  | In the News | Content 3 column flow |
  | About This Site        | Footer                |
  | About VPUE             | Footer                |
  | See Also               | Footer                |

Scenario: Approaching Stanford heading
  Given I am on "advising/approaching/approaching-stanford"
  Then I should see the "Approaching Stanford" heading in the "Content" region

Scenario Outline: Approaching Stanford content
  Given I am on "advising/approaching/approaching-stanford"
  Then I should see "<Content>" in the "<Region>" region
  
  Examples:
  | Content | Region |
  | Approaching Stanford is the process that will guide you in your transition to Stanford | Content Body |
  | We are delighted that you have chosen to spend the next few years here on The Farm     | Content Body |
  | Connect with students and Stanford administrators on our new social media platform     | Content Body |
  | Approaching Stanford is the process that will guide you in your transition to Stanford | Content Body |
  | Browse the topics in this online guide to learn how to prepare for Stanford            | Content Body |

Scenario Outline: BOSP block and footer content
  Given I am on "programs/bosp"
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header                                 | Region                |
  | Bing Overseas Studies Program Calendar | Content 3 column flow |
  | About BOSP                             | Content 3 column flow |
  | Featured Links                         | Content 3 column flow |

Scenario: Vaden Health Forms page content
  Given I am on "advising/approaching-stanford/vaden-health-center-health-forms"
  Then I should see "Before you can be enrolled at Stanford, you must complete these Entrance Medical Requirements" in the "Content Body" region

Scenario: Checking Your Stanford Email Account page content
  Given I am on "advising/student-guides/checking-your-stanford-email-account"
  Then I should see "As a matriculated student, your Stanford email account is now active. You are responsible for knowing the information sent to your Stanford email account, even during the summer" in the "Content Body" region

Scenario: Majors and Minors page content
  Given I am on "academic-planning/majors-minors"
  Then I should see "During your undergraduate career, you have the ability to customize your completion of the Major requirement to best suit your individual and academic preferences" in the "Content Body" region
