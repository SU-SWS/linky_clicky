Feature: Content
  In order to ensure that the Undergrad website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  @safe @live @site
  Scenario Outline: Homepage block and footer content
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

    Examples:
      | Header                            | Region                |
      | Undergrad Events                  | Content 3 column flow |
      | UAR Welcomes Louis E. Newman      | Content 3 column flow |
      | BASS UNIVERSITY FELLOWS 2015-2016 | Content 3 column flow |
      | About This Site                   | Footer                |
      | About VPUE                        | Footer                |
      | See Also                          | Footer                |

  @safe @live @site
  Scenario: Approaching Stanford heading
    Given I am on "advising/approaching/approaching-stanford"
    Then I should see the "Approaching Stanford" heading in the "Content" region

  @safe @live @site
  Scenario Outline: Approaching Stanford content
    Given I am on "advising/approaching/approaching-stanford"
    Then I should see "<Content>" in the "<Region>" region

    Examples:
      | Content                              | Region       |
      | Welcome to Stanford                  | Content Body |
      | Approaching Stanford                 | Content Body |
      | Important Dates and Deadlines        | Content Body |
      | Three Books                          | Content Body |
      | Stanford Canvas                      | Content Body |
      | Mailings, Publications & Newsletters | Content Body |

  @safe @live @site
  Scenario Outline: BOSP block and footer content
    Given I am on "programs/bosp"
    Then I should see the "<Header>" heading in the "<Region>" region

    Examples:
      | Header                                 | Region                |
      | Bing Overseas Studies Program Calendar | Content 3 column flow |
      | About BOSP                             | Content 3 column flow |
      | Featured Links                         | Content 3 column flow |

  @safe @live @site
  Scenario: Vaden Health Forms page content
    Given I am on "advising/approaching-stanford/vaden-health-center-health-forms"
    Then I should see "Before you can be enrolled at Stanford, you must complete these Entrance Medical Requirements" in the "Content Body" region

  @safe @live @site
  Scenario: Checking Your Stanford Email Account page content
    Given I am on "advising/student-guides/checking-your-stanford-email-account"
    Then I should see "As a matriculated student, your Stanford email account is now active. You are responsible for knowing the information sent to your Stanford email account, including during the summer" in the "Content Body" region

  @safe @live @site
  Scenario: Majors and Minors page content
    Given I am on "academic-planning/majors-minors"
    Then I should see "During your undergraduate career, you have the ability to customize your completion of the Major requirement to best suit your individual and academic preferences" in the "Content Body" region
