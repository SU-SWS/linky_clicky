Feature: Homepage
  In order to ensure that the Jumpstart website has the correct content
  As an end user
  I want to check for the existence of content that should appear

Scenario Outline: Header content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header                          | Region |
  | About      | First sidebar |
  | In the Spotlight      | First sidebar |
  | Announcements      | Content Body |
  | Example Announcement | Content Body |
  | Connect | Footer |
  | Contact Us | Footer |
  | Optional Footer Block      | Footer |

Scenario Outline: Homepage content
  Given I am on the homepage
  Then I should see "<Text>" in the "<Region>" region

  Examples:
  | Text                     | Region        |
  | This is your About block | First sidebar |
  | This is your Highlights block  | First sidebar |
  | This is your Announcements block  | Content Body |
  | Building Name Room 555 | Footer |
  | This is your Optional Footer Block | Footer |

Scenario Outline: Homepage links
  Given I am on the homepage
  Then I should see the link "<Link>" in the "<Region>" region

  Examples:
  | Link                     | Region        |
  | More About Us | First sidebar |
  | More Information | First sidebar |
  | Download the Document | Content Body |
  | Optional More Information Link  | Content Body |
  | Facebook | Footer |
  | Twitter | Footer |
  | GooglePlus | Footer |
  | LinkedIn | Footer |
  | YouTube | Footer |
  | Vimeo | Footer |
  | Tumblr | Footer |
  | Pinterest | Footer |
  | Flickr | Footer |
  | sunetid@stanford.edu | Footer |
  | Campus Map | Footer |
