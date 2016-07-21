Feature: Homepage
  In order to ensure that the Jumpstart VPSA website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  @api @javascript @safe
  Scenario: Homepage full width banner and content
  Given I am on the homepage
  Then I should see 1 ".view-mode-stanford-full-width-banner-short" element


  @api @safe
  Scenario Outline: Homepage blocks are available
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

    Examples:
      | Header                | Region |
      | Connect               | Main Lower |
      | About Us              | Main Content |
      | Upcoming Events       | Main Content |
      | Announcements & News  | Main Content |
      | Quick Links           | Main Content |
      | Custom Content        | Main Content |
      | Helpful Links         | Footer |
      | Contact Us            | Footer |

  @api @safe
  Scenario Outline: Homepage content
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

    Examples:
      | Text                                            | Region   |
      | Building Name Room 555                          | Footer   |
      | The XXX is proud to be part of Student Affairs  | Footer   |
      | Get emergency assistance or find help           | Footer   |
      | Student Affairs                                 | Footer   |
