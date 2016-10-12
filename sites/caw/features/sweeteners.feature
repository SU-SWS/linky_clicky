Feature: Sweeteners
  In order to ensure that the CAW website has sweeteners functionality
  As an authenticated user
  I want to check that I can create edit and use the sweeteners module

  @api @javascript @content
  Scenario: Create a sweetener node
    Given I am logged in as a user with the "administrator" role
    And go to "node/add/stanford-sweetener"
    Then I fill in "edit-title" with "Test Sweetener"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-sweet-image-und-0-upload"
    Then I press "Upload"
    Then I fill in "edit-field-s-sweet-more-info-und-0-title" with "This is just a title"
    Then I fill in "URL" with "http://www.google.com"
    Then I check "Discounts"
    Then I check "Staff"
    When I select the "Faculty Staff Help Center" radio button
    Then I press "Save"
    Then I should see "Sweetener Test Sweetener has been created." in the "Content Head" region
    Then I should see "Available to:" in the "Content Body" region
    Then I should see "Staff" in the "Content Body" region
    Then I should see "This is just a title" in the "Content Body" region
    Then I should see 1 ".field-name-field-s-sweet-image" element

  @api @javascript @content
  Scenario: Create a sweetener bean
    Given I am logged in as a user with the "administrator" role
    And go to "block/add/stanford-sweetener-carousel"
    Then I fill in "Label" with "Test Carousel"
    Then I fill in "Title" with "Something"
    Then I select "1 Item" from "How many items should be visible at one time?"
    Then I check "Enable view more link"
    Then I select the "Sweeteners by subsite" radio button
    Then I select "Benefits & Rewards" from "Subsite Tags"
    Then I uncheck "Create new revision"
    Then I press "Save"
    # Then I should see 1 or more ".slick-slide" elements
    Then I should see "See all sweeteners" in the "Content Body" region
    Then I click "Edit Block"
    Then I uncheck "Enable view more link"
    When I select the "Sweeteners by type" radio button
    Then I check "Discounts"
    Then I check "Transportation"
    Then I press "Save"
    Then I should see 1 or more ".slick-slide" elements
    Then I should not see "See all sweeteners" in the "Content Body" region
    Then I click "Edit Block"
    Then I select the "Sweeteners by audience" radio button
    Then I check "Faculty"
    Then I check "Family"
    Then I check "Staff"
    Then I press "Save"
    Then I should see 1 or more ".slick-slide" elements

  @api @javascript @safe @live @site
  Scenario: Carousel on the home page
    Given I am on the homepage
    Then I should see 1 ".slick-carousel" element in the "Content Bottom" region

  #
  # NEEDS A FIX. Elements absolute positioning is too far off screen.
  #
  # @api @javascript
  # Scenario: Sweetener Isotope
  #  Given I am on "benefits-rewards/sweeteners"
  #  Then I should see 1 or more ".isotope-element" elements
  #  Then I check "Discounts"
  #  Then I should see 1 or more ".isotope-hidden" elements
  #  Then I uncheck "Discounts"
  #  Then I should see 0 ".isotope-hidden" elements
  @api @javascript @safe @live @site
  Scenario: Sweetener Isotope Deep Link
    Given I am on "benefits-rewards/sweeteners/discounts"
    Then I should see 1 or more ".isotope-hidden" elements

  # Then I uncheck "Discounts"
  # Then I should see 0 ".isotope-hidden" elements
  @api @safe @live @site
  Scenario: Manage Sweeteners Items
    Given I am logged in as a user with the "site owner" role
    And go to "admin/manage"
    Then I should see "Manage Sweeteners" in the "Second sidebar" region

  @api @safe @live @site
  Scenario: Manage Stanford Sweeteners Items page exists
    Given I am logged in as a user with the "site owner" role
    And go to "admin/manage/stanford_sweeteners_item"
    Then I should see "Stanford Sweeteners Item Content"
