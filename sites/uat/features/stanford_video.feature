Feature: Stanford Video
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford Video module is working properly

  @api @dev @javascript @destructive
  Scenario: Create Uploaded Video Node with Captions
    Given the "stanford_video" module is enabled
    And I am logged in as a user with the "administrator" role
    And I go to "node/add/stanford-video"
    And I enter "Pickles" for "Title"
    And I attach the file "media.mp4" to "edit-field-stanford-video-file-und-0-upload"
    And I attach the file "media.srt" to "edit-field-stanford-video-caption-und-0-upload"
    And I attach the file "keyframe.jpg" to "edit-field-stanford-video-poster-und-0-upload"
    And I press the "Save" button
    Then I should see "Stanford Web Video Pickles has been created"
    And I should see a ".jwplayer-video" element
