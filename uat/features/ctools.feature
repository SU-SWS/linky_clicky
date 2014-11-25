Feature: Chaos Tools
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Chaos Tools module is working properly

  @api
  Scenario Outline: Chaos Tools
    Given the "ctools" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/advanced_help/ctools"
    Then I should see "<Text>" in the "Content" region

  Examples:
    | Text                                   |
    | About Chaos Tool Suite                 |
    | Plugins and APIs tool                  |
    | Creating plugins                       |
    | Implementing APIs                      |
    | Implementing plugins                   |
    | Context tool                           |
    | Argument plugins                       |
    | Content plugins                        |
    | Context based access control plugins   |
    | Context plugins                        |
    | Relationship plugins                   |
    | AJAX and Javascript helper tools       |
    | Dependent checkboxes and radio buttons |
    | Javascript collapsible DIV             |
    | Javascript dropbutton                  |
    | Javascript dropdown                    |
    | Javascript modal tool                  |
    | CSS scrubbing and caching tool         |
    | Exportable objects UI creator          |
    | Exportable objects tool                |
    | Form tools                             |
    | Form wizard tool                       |
    | Miscellaneous menu helper tool         |
    | Temporary object caching               |

