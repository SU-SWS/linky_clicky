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

Scenario: Homepage content
  Given I am on the homepage
  Then I should see "provides resources for Stanford web designers" in the "Main Top" region
  And I should see the heading "About SOAP" in the "Main Top" region
  And I should see the heading 'The "SOAP" Box' in the "Content 3 column flow" region
  And I should see the heading "Recent News" in the "Content 3 column flow" region
  And I should see the heading "Upcoming Events" in the "Content 3 column flow" region

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
  Then I should see "A number of policies, guidelines and standards related to online accessibility are gathered here" in the "Content Body" region

Scenario: Contact page content
  Given I am on "about/contact"
  Then I should see "If you cannot access content or use features on any Stanford University website due to a disability or other accessibility" in the "Content Body" region
