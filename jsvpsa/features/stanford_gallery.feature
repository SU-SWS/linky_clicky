Feature: Stanford Gallery
  In order to ensure that gallery nodes and beans can be created and the appropriate displays are available.
  as an administrator
  I want to be able to create gallery nodes with imagess.

@api @javascript @content @dev
Scenario: Create stanford gallery node
  Given I am logged in as a user with the "administrator" role
  And I am on "node/add/stanford-gallery"

  Then I fill in "edit-title" with "BeHat Test Gallery"
  Then I click on the element with css selector ".vertical-tab-button:nth-child(2)"
  Then I select "Small" from "Thumbnail Size"
  Then I select "Large" from "Thumbnail Size"
  Then I select "Large Scaled" from "Thumbnail Size"
  Then I select "Medium" from "Thumbnail Size"
  Then I check "Show Captions"



  # Attach first image and add caption & credits
  Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-gallery-image-info-und-0-field-s-image-image-und-0-upload"
  Then I press "edit-field-s-gallery-image-info-und-0-field-s-image-image-und-0-upload-button"
  Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-multiple-table tr:nth-child(1) a.fieldset-title" with javascript
  Then I fill in "edit-field-s-gallery-image-info-und-0-field-s-image-caption-und-0-value" with "This is caption 1"
  Then I fill in "edit-field-s-gallery-image-info-und-0-field-s-image-credits-und-0-value" with "This is credit 1"

  # Add new field collection element.
  Then I press "field_s_gallery_image_info_add_more"

  # Wait for new field collection element and add second image
  Given I wait for AJAX to finish
  Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-gallery-image-info-und-1-field-s-image-image-und-0-upload"
  Then I press "edit-field-s-gallery-image-info-und-1-field-s-image-image-und-0-upload-button"
  Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-multiple-table tr:nth-child(2) a.fieldset-title" with javascript
  Then I fill in "edit-field-s-gallery-image-info-und-1-field-s-image-caption-und-0-value" with "This is caption 2"
  Then I fill in "edit-field-s-gallery-image-info-und-1-field-s-image-credits-und-0-value" with "This is credit 2"

  # Add new field collection element.
  Then I press "field_s_gallery_image_info_add_more"

  # Wait for new field collection element and add third image
  Given I wait for AJAX to finish
  Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-gallery-image-info-und-2-field-s-image-image-und-0-upload"
  Then I press "edit-field-s-gallery-image-info-und-2-field-s-image-image-und-0-upload-button"
  Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-multiple-table tr:nth-child(3) a.fieldset-title" with javascript
  Then I fill in "edit-field-s-gallery-image-info-und-2-field-s-image-caption-und-0-value" with "This is caption 1"
  Then I fill in "edit-field-s-gallery-image-info-und-2-field-s-image-credits-und-0-value" with "This is credit 6"

  # Save the Node
  Then I press "Save"

  # Confirm Node has been created
  Then I should see "Gallery BeHat Test Gallery has been created." in the "Content Head" region
  # Then I should be on "behat-test-gallery"

  # Test for the images.
  Then I should see 3 or more ".stanford-gallery-image" elements
  Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-item:nth-child(1) .stanford-gallery-image"

  Then I should see 1 "#colorbox" element
  When I hover over the element "#cboxContent"
  # TODO: Make these work...
  # Then I should see 1 "#colorbox .caption" element
  # Then I should see 1 "#colorbox .credits" element
  Then I click on the element with css selector "#cboxNext"
  Then I click on the element with css selector "#cboxNext"
  Then I click on the element with css selector "#cboxNext"
  Then I click on the element with css selector "#cboxNext"
  Then I click on the element with css selector "#cboxNext"
  Then I click on the element with css selector "#cboxClose"

  #####################
  #
  # The remaining tests have been commented out while JIRA ticket VPSADEV-362 is open.
  #
  #####################

  # TEST THE BEAN BLOCK...
  #And go to "block/add/stanford-gallery"
  #Then I fill in "Label" with "My BeHat Test Label"
  #Then I fill in "edit-title" with "My BeHat Test Gallery Block"
  #Then I select "BeHat Test Gallery" from "Gallery"
  #Then I select "Large Scaled" from "View Mode"
  #Then I select "Large" from "View Mode"
  #Then I select "Medium" from "View Mode"
  #Then I select "Small" from "View Mode"
  #Then I press "Save"
  #Then I should see "Stanford Gallery My BeHat Test Gallery Block has been created." in the "Content Head" region

  # Test for the images.
  #Then I should see 6 or more ".stanford-gallery-image" elements
  #Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-item:nth-child(1) .stanford-gallery-image"

  #Then I should see 1 "#colorbox" element
  #When I hover over the element "#cboxContent"
  #Then I click on the element with css selector "#cboxNext"
  #Then I click on the element with css selector "#cboxNext"
  #Then I click on the element with css selector "#cboxNext"
  #Then I click on the element with css selector "#cboxNext"
  #Then I click on the element with css selector "#cboxNext"

  # TODO: Make these work...
  # Then I should see 1 "#colorbox .caption" element
  # Then I should see 1 "#colorbox .credits" element
  #Then I click on the element with css selector "#cboxClose"
