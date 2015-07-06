Feature: Content
  In order to ensure that the SOAP website has the correct content
  As an end user
  I want to check for the existence of content that should appear

Scenario Outline: Footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header      | Region |
  | Contact Us  | Footer |
  | Quick Links | Footer |

Scenario Outline: Homepage content
  Given I am on the homepage
  Then I should see "<Text>" in the "<Region>" region

  Examples:
  | Text                                             | Region        |
  | provides resources for Stanford web designers    | First sidebar |
  | Often, when people think about web accessibility | First sidebar |
  | Announcements                                    | Content Body  |

Scenario: Program Services content
  Given I am on "program-services"
  Then I should see "Stanford’s Online Accessibility Program offers a number of services to campus" in the "Content Body" region

Scenario: Getting Started content
  Given I am on "getting-started"
  Then I should see "Information and resources to begin the journey to make your web content accessible to people with disabilities" in the "Content Body" region

Scenario: Tips and Tools content
  Given I am on "tips-and-tools"
  Then I should see "Which tips and tools are right for you depends on whether you're a developer, designer, or content creator" in the "Content Body" region

Scenario: Guidelines and Standards content
  Given I am on "guidelines-and-standards"
  Then I should see "A number of standards, policies and guidelines related to online accessibility gathered here" in the "Content Body" region

Scenario: Contact page content
  Given I am on "about/contact"
  Then I should see "If you cannot access content or use features on any Stanford University website due to a disability or other accessibility" in the "Content Body" region
