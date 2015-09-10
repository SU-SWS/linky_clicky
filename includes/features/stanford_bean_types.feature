Feature: Stanford BEAN Types
  In order to ensure that stanford bean types are available
  I want to check that the Stanford BEAN Types module is working correctly

  @api @safe @deploy @live
  Scenario: Stanford BEAN Types
    # Given the "stanford_bean_types" module is enabled
    # And the "stanford_bean_types_permissions" module is enabled
    And I am logged in as a user with the "administrator" role
    # And the cache has been cleared
    And I am on "block/add"
    Then I should see the link "stanford_banner" in the "Content Body" region
    And I should see the link "stanford_contact" in the "Content Body" region
    And I should see the link "stanford_large_block" in the "Content Body" region
    And I should see the link "stanford_postcard" in the "Content Body" region
    And I should see the link "stanford_social_media_connect" in the "Content Body" region
    And I should see the link "stanford_big_text_block" in the "Content Body" region
    And I should see the link "stanford_testimonial_block" in the "Content Body" region
