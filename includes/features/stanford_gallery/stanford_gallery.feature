Feature: Stanford Gallery
  In order to ensure that gallery nodes and beans can be created and the appropriate displays are available.

  @api @javascript
  Scenario: Create stanford gallery node
    Given I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-gallery"

    Then I fill in "edit-title" with "BeHat Test Gallery"
    # Then I fill in "edit-body-und-0-value" with "My wonderful description"
    Then I click on the element with css selector ".vertical-tabs li:nth-child(2)"
    Then I select "Small" from "Thumbnail Size"
    Then I select "Large" from "Thumbnail Size"
    Then I select "Large Scaled" from "Thumbnail Size"
    Then I select "Medium" from "Thumbnail Size"
    Then I check "Show Captions"

    # Add each field collection element.
    Then I press "field_s_gallery_image_info_add_more"
    Then I press "field_s_gallery_image_info_add_more"
    Then I press "field_s_gallery_image_info_add_more"
    Then I press "field_s_gallery_image_info_add_more"
    Then I press "field_s_gallery_image_info_add_more"

    # Images
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-gallery-image-info-und-0-field-s-image-image-und-0-upload--6"
    Then I press "edit-field-s-gallery-image-info-und-0-field-s-image-image-und-0-upload-button--6"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-gallery-image-info-und-1-field-s-image-image-und-0-upload--5"
    Then I press "edit-field-s-gallery-image-info-und-1-field-s-image-image-und-0-upload-button--5"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-gallery-image-info-und-2-field-s-image-image-und-0-upload--4"
    Then I press "edit-field-s-gallery-image-info-und-2-field-s-image-image-und-0-upload-button--4"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-gallery-image-info-und-3-field-s-image-image-und-0-upload--3"
    Then I press "edit-field-s-gallery-image-info-und-3-field-s-image-image-und-0-upload-button--3"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-gallery-image-info-und-4-field-s-image-image-und-0-upload--2"
    Then I press "edit-field-s-gallery-image-info-und-4-field-s-image-image-und-0-upload-button--2"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-gallery-image-info-und-5-field-s-image-image-und-0-upload"
    Then I press "edit-field-s-gallery-image-info-und-5-field-s-image-image-und-0-upload-button"

    # Expand each option.
    Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-multiple-table tr:nth-child(1) a.fieldset-title"
    Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-multiple-table tr:nth-child(2) a.fieldset-title"
    Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-multiple-table tr:nth-child(3) a.fieldset-title"
    Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-multiple-table tr:nth-child(4) a.fieldset-title"
    Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-multiple-table tr:nth-child(5) a.fieldset-title"
    Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-multiple-table tr:nth-child(6) a.fieldset-title"

    # Captions
    Then I fill in "edit-field-s-gallery-image-info-und-0-field-s-image-caption-und-0-value--6" with "This is caption 1"
    Then I fill in "edit-field-s-gallery-image-info-und-1-field-s-image-caption-und-0-value--5" with "This is caption 1"
    Then I fill in "edit-field-s-gallery-image-info-und-2-field-s-image-caption-und-0-value--4" with "This is caption 1"
    Then I fill in "edit-field-s-gallery-image-info-und-3-field-s-image-caption-und-0-value--3" with "This is caption 1"
    Then I fill in "edit-field-s-gallery-image-info-und-4-field-s-image-caption-und-0-value--2" with "This is caption 1"
    Then I fill in "edit-field-s-gallery-image-info-und-5-field-s-image-caption-und-0-value" with "This is caption 1"

    # Credits
    Then I fill in "edit-field-s-gallery-image-info-und-0-field-s-image-credits-und-0-value--6" with "credit 1"
    Then I fill in "edit-field-s-gallery-image-info-und-1-field-s-image-credits-und-0-value--5" with "credit 2"
    Then I fill in "edit-field-s-gallery-image-info-und-2-field-s-image-credits-und-0-value--4" with "credit 3"
    Then I fill in "edit-field-s-gallery-image-info-und-3-field-s-image-credits-und-0-value--3" with "credit 4"
    Then I fill in "edit-field-s-gallery-image-info-und-4-field-s-image-credits-und-0-value--2" with "credit 5"
    Then I fill in "edit-field-s-gallery-image-info-und-5-field-s-image-credits-und-0-value" with "credit 6"

    # Save the Node
    Then I press "Save"

    # Confirm Node has been created
    Then I should see "Gallery BeHat Test Gallery has been created." in the "Content Head" region
    # Then I should be on "behat-test-gallery"

    # Test for the images.
    Then I should see 6 or more ".stanford-gallery-image" elements
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

    # TEST THE BEAN BLOCK...
    And go to "block/add/stanford-gallery"
    Then I fill in "Label" with "My BeHat Test Label"
    Then I fill in "edit-title" with "My BeHat Test Gallery Block"
    Then I select "BeHat Test Gallery" from "Gallery"
    Then I select "Large Scaled" from "View Mode"
    Then I select "Large" from "View Mode"
    Then I select "Medium" from "View Mode"
    Then I select "Small" from "View Mode"
    Then I press "Save"
    Then I should see "Stanford Gallery My BeHat Test Gallery Block has been created." in the "Content Head" region

    # Test for the images.
    Then I should see 6 or more ".stanford-gallery-image" elements
    Then I click on the element with css selector ".field-name-field-s-gallery-image-info .field-item:nth-child(1) .stanford-gallery-image"

    Then I should see 1 "#colorbox" element
    When I hover over the element "#cboxContent"
    Then I click on the element with css selector "#cboxNext"
    Then I click on the element with css selector "#cboxNext"
    Then I click on the element with css selector "#cboxNext"
    Then I click on the element with css selector "#cboxNext"
    Then I click on the element with css selector "#cboxNext"

    # TODO: Make these work...
    # Then I should see 1 "#colorbox .caption" element
    # Then I should see 1 "#colorbox .credits" element
    Then I click on the element with css selector "#cboxClose"

