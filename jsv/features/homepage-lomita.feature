Feature: Lomita Homepage Layout
  In order to ensure that the Jumpstart "Lomita" page layout
  As an end user
  I want to check for the existence of content that should appear
  (Tests in this Feature should fail if Lomita is not the selected homepage layout)

Scenario Outline: Header content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
  | Header                          | Region |
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
  | To edit the block and remove this placeholder content, hover over the block, click on the gear widget and select  | Content Top |
  | Add a video, image, or other featured content to this block.   | Content Top |
  | Building Name Room 555 | Footer |
  | This is your Optional Footer Block | Footer |

Scenario: Homepage video block
  Given I am on the homepage
  Then I should see an "iframe" element

Scenario Outline: Homepage links
  Given I am on the homepage
  Then I should see the link "<Link>" in the "<Region>" region

  Examples:
  | Link                     | Region        |
  | About us | Content Top |
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
