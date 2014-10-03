Feature: Mayfield Homepage Layout
  In order to ensure that the Jumpstart "Mayfield" page layout
  As an end user
  I want to check for the existence of content that should appear
  (Tests in this Feature should fail if Mayfield is not the selected homepage layout)

Scenario Outline: Header content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header                          | Region |
  | About | Content 3 column flow |
  | In the Spotlight | Content 3 column flow |
  | Announcements | Content 3 column flow |
  | Connect | Footer |
  | Contact Us | Footer |
  | Optional Footer Block      | Footer |
  | Related Links      | Footer |

Scenario Outline: Homepage content
  Given I am on the homepage
  Then I should see "<Text>" in the "<Region>" region

  Examples:
  | Text                     | Region        |
  | Feature a tagline or website subtitle here | Content Top |
  | Since its opening in 1891, Stanford has been dedicated to finding solutions to big challenges and to preparing students for leadership in a complex world. | Content Top |
  | John Hennessy   | Content Top |
  | This is your About block. Here you can post a short description of your group or organization   | Content 3 column flow |
  | This is your Highlights block   | Content 3 column flow |
  | This is your Announcements block   | Content 3 column flow |
  | Building Name Room 555 | Footer |
  | This is your Optional Footer Block | Footer |

Scenario Outline: Homepage links
  Given I am on the homepage
  Then I should see the link "<Link>" in the "<Region>" region

  Examples:
  | Link                     | Region        |
  | About us | Content Top |
  | Learn more on stanford.edu | Content Top |
  | More About Us | Content 3 column flow |
  | More Information | Content 3 column flow |
  | Learn more about our programs | Content 3 column flow |
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
  | Stanford University | Footer |
  | Research at Stanford | Footer |
  | Stanford News | Footer |
