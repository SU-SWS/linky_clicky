Feature: File Entity
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the File Entity module is working properly

  @api
  Scenario: File Entity
    Given the "file_entity" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/media/file-settings"
    When I enter "50MB" for "Maximum upload size"
    When I enter "jpg jpeg gif png txt doc docx xls xlsx pdf ppt pptx pps ppsx odt ods odp mp3 mov mp4 m4a m4v mpeg avi ogg oga ogv weba webp webm" for "Default allowed file extensions"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved" in the "Console" region