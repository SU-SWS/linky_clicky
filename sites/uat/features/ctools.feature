@contrib
Feature: Chaos Tools
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Chaos Tools module is working properly

  @api @deploy @safe
  Scenario: Chaos Tools
    Given the "ctools" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/help/ah/ctools"
    # Do this as a Scenario rather than a Scenario Outline because that way we don't have to log in every time
    Then I should see "About Chaos Tool Suite" in the "Content" region
    And I should see "Plugins and APIs tool" in the "Content" region
    And I should see "Creating plugins" in the "Content" region
    And I should see "Implementing APIs" in the "Content" region
    And I should see "Implementing plugins" in the "Content" region
    And I should see "Context tool" in the "Content" region
    And I should see "Argument plugins" in the "Content" region
    And I should see "Content plugins" in the "Content" region
    And I should see "Context based access control plugins" in the "Content" region
    And I should see "Context plugins" in the "Content" region
    And I should see "Relationship plugins" in the "Content" region
    And I should see "AJAX and Javascript helper tools" in the "Content" region
    And I should see "Dependent checkboxes and radio buttons" in the "Content" region
    And I should see "Javascript collapsible DIV" in the "Content" region
    And I should see "Javascript dropbutton" in the "Content" region
    And I should see "Javascript dropdown" in the "Content" region
    And I should see "Javascript modal tool" in the "Content" region
    And I should see "CSS scrubbing and caching tool" in the "Content" region
    And I should see "Exportable objects UI creator" in the "Content" region
    And I should see "Exportable objects tool" in the "Content" region
    And I should see "Form tools" in the "Content" region
    And I should see "Form wizard tool" in the "Content" region
    And I should see "Miscellaneous menu helper tool" in the "Content" region
    And I should see "Temporary object caching" in the "Content" region

