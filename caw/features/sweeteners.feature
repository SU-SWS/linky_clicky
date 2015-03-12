Feature: Sweeteners
  In order to ensure that the CAW website has sweeteners functionality
  As an authenticated user
  I want to check that I can create edit and use the sweeteners module

@api @javascript
Scenario: Create a sweetener node
 Given I am logged in as a user with the "administrator" role
 And go to "node/add/stanford-sweetener"
 Then I fill in "edit-title" with "Test Sweetener"
 Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-sweet-image-und-0-upload"
 Then I press "Upload"
 Then I fill in "edit-field-s-sweet-more-info-und-0-title" with "This is just a title"
 Then I fill in "URL" with "http://www.google.com"
 Then I check "Athletics"
 Then I check "Staff"
 Then I check "Faculty Staff Help Center"
 Then I press "Save"
 Then I should see "Sweetener Test Sweetener has been created." in the "Content Head" region
 Then I should see "Available to:" in the "Content Body" region
 Then I should see "Staff" in the "Content Body" region
 Then I should see "This is just a title" in the "Content Body" region
 Then I should see 1 ".field-name-field-s-sweet-image" element

@api @javascript
Scenario: Create a sweetener bean
 Given I am logged in as a user with the "administrator" role
 And go to "block/add/stanford-sweetener-carousel"
 Then I fill in "Label" with "Test Carousel"
 Then I fill in "Title" with "Something"
 Then I select "1 Item" from "How many items should be visible at one time?"
 Then I check "Enable view more link"
 Then I select the radio button "Sweeteners by subsite"
 Then I select "Benefits & Rewards" from "Subsite Tags"
 Then I uncheck "Create new revision"
 Then I press "Save"
 Then I should see 1 or more ".slick-slide" elements
 Then I should see "See all sweeteners" in the "Content Body" region
 Then I click "Edit Block"
 Then I uncheck "Enable view more link"
 Then I select the radio button "Sweeteners by type"
 Then I check "Athletics"
 Then I check "Campus Resources"
 Then I check "Discounts"
 Then I check "Fitness & Wellness"
 Then I check "Transportation"
 Then I press "Save"
 Then I should see 1 or more ".slick-slide" elements
 Then I should not see "See all sweeteners" in the "Content Body" region
 Then I click "Edit Block"
 Then I select the radio button "Sweeteners by audience"
 Then I check "Faculty"
 Then I check "Family"
 Then I check "Managers"
 Then I check "Staff"
 Then I press "Save"
 Then I should see 1 or more ".slick-slide" elements


@api @javascript
Scenario: Carousel on the home page
 Given I am on the homepage
 Then I should see 1 ".slick-carousel" element in the "Content Bottom" region

@api @javascript
Scenario: Sweetener Isotope
 Given I am on "benefits-rewards/sweeteners"
 Then I should see 1 or more ".isotope-element" elements
 Then I check "Campus Resources"
 Then I should see 1 or more ".isotope-hidden" elements
 Then I uncheck "Campus Resources"
 Then I should see 0 ".isotope-hidden" elements


@api @javascript
Scenario: Sweetener Isotope Deep Link
 Given I am on "benefits-rewards/sweeteners/campus-resources"
 Then I should see 1 or more ".isotope-hidden" elements
 Then I uncheck "Campus Resources"
 Then I should see 0 ".isotope-hidden" elements
