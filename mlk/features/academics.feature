Feature: Homepage
  In order to ensure that the Jumpstart Academic website has the correct content
  As an end user
  I want to check for the existence of content that should appear

Scenario Outline: Header content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header                        | Region |
  | About   | First sidebar |
  | Academic Programs   | First sidebar |
  | Welcome to your site!   | Content Body |
  | Recent News | Content 3 column flow |
  | Upcoming Events | Content 3 column flow |
  | Affiliated Programs | Content 3 column flow |
  | About   | Footer |
  | Academics                   | Footer |
  | People | Footer |
  | News and Events | Footer |
  | Connect | Footer |
  | Contact Us | Footer |
