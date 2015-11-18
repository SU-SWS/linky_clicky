Feature: Stanford Private Page
  In order to ensure that the Private Pages Section is viewable
  As an administrator, site owner, or editor
  I want to be able to create, edit, delete, view, and manage private page nodes.

  @api @deploy @jse @live @prod @safe @contrib @stanford
  Scenario: Check that the Internal Login button directs to the Private Pages Section
    Given I am logged in as a user with the "administrator" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    Then I should see "Private Pages" in the "First sidebar" region
    And I should see a ".block-menu" element
    And I should see "Private Pages" in the "Content Head" region

  @api @deploy @jse @safe @contrib @stanford
  Scenario: On deploy, check that the site member can view all private pages
    Given I am logged in as a user with the "site member" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    And I should see "Private Pages" in the "First sidebar" region
    And I should see a ".block-menu" element
    And I should see "Private Pages" in the "Content Head" region

    And I click "For Faculty" in the "First sidebar" region
    And I should see "Private Pages" in the "First sidebar" region
    And I should see a ".block-menu" element
    And I should see "For Faculty" in the "Content Head" region

    And I click "Faculty Sub-Page" in the "First sidebar" region
    And I should see "Private Pages" in the "First sidebar" region
    And I should see a ".block-menu" element
    And I should see "Faculty Sub-Page" in the "Content Head" region

    And I click "For Students" in the "First sidebar" region
    And I should see "Private Pages" in the "First sidebar" region
    And I should see a ".block-menu" element
    And I should see "For Students" in the "Content Head" region

    And I click "For Staff" in the "First sidebar" region
    And I should see "Private Pages" in the "First sidebar" region
    And I should see a ".block-menu" element
    And I should see "For Staff" in the "Content Head" region

  @api @deploy @live @prod @jse @safe @contrib @stanford
  Scenario: On a production site check site member can view Private Pages Section
    Given I am logged in as a user with the "site member" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    And I should see a ".block-menu" element

  @api @deploy @live @prod @jse @safe @contrib @stanford
  Scenario: On a production site check site owner can view Private Pages Section
    Given I am logged in as a user with the "site owner" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    And I should see a ".block-menu" element


  @api @deploy @live @prod @jse @safe @contrib @stanford
  Scenario: On a production site check site owner can view Private Pages Section
    Given I am logged in as a user with the "editor" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    And I should see a ".block-menu" element


  @api @deploy @live @prod @jse @safe @contrib @stanford
  Scenario: On a production site check site owner can view Private Pages Section
    Given I am logged in as a user with the "administrator" role
    Given I am on the homepage
    And I click "Internal Login" in the "Footer" region
    And I should see a ".block-menu" element

  @api  @deploy @live @prod @jse @safe @contrib @stanford
  Scenario: Private Page view on manage Private Page
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/manage/private-page"
    Then I should see 1 or more ".view-stanford-private-page-manage" elements

  @api @content @contrib @stanford @jse
  Scenario: Site owner can create Private Page types
    Given I am logged in as a user with the "site owner" role
    When I go to "node/add/stanford-private-page"
    Then I should see "Create Private Page" in the "Branding" region
    Then I fill in "edit-title" with "Bar"
    Then I attach the file "../img/ooooaaaahhh.jpg" to "edit-field-s-image-info-und-0-field-s-image-image-und-0-upload"
    Then I press "Upload"
    Then I press "Save"
    Then I should be on "private/bar"
    Then I go to "admin/manage/private-page"
    Then I click on the element with css selector ".views-row-first .views-field-title a"
    Then I click "Edit" in the "Tabs" region
    Then I press "Save"
    Then I go to "private/bar"
    And I should see "Bar" in the "Content Head" region
