Feature: Homepage
  In order to ensure that the Jumpstart VPSA website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  @api @javascript @safe @deploy
  Scenario: Homepage slider and content
  Given I am on the homepage
  Then I should see 1 ".view-stanford-carousel" element
  And I should see 2 or more ".carousel-block" elements
  And I click on the element with css selector ".carousel-control.right"
  Then I wait 3 seconds
  And I click on the element with css selector ".carousel-control.left"
  Then I should see "Welcome to our website" in the "Main Upper" region

  @api @safe @deploy
  Scenario Outline: Homepage blocks are available
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

    Examples:
      | Header                | Region |
      | Connect               | Second sidebar |
      | About                 | Second sidebar |
      | Upcoming Events       | Main Content |
      | Recent News           | Main Content |
      | Helpful Links         | Footer |
      | Contact Us            | Footer |

  @api @safe @deploy
  Scenario Outline: Homepage content
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

    Examples:
      | Text                                            | Region   |
      | Welcome to our website                          | Main Upper |
      | Building Name Room 555                          | Footer   |
      | The XXX is proud to be part of Student Affairs  | Footer   |
      | Get emergency assistance or find help           | Footer   |
      | Student Affairs                                 | Footer   |
