Feature: Academics
  In order to ensure that the Department of Classics website Academics content is visible
  As an end user
  I want to check for the existence of page and block content

  Scenario: Viewing a featured image on the Undergraduate Programs page
    Given I am on "academics/undergraduate-program"
    Then I should see "Aly Bossert (BA, 2010) helps out at an information reception for prospective freshmen." in the "Content Body" region
    And I should see the heading "Major" in the "Content Body" region
    And I should see the heading "Minor" in the "Content Body" region
    And I should see the heading "Honors" in the "Content Body" region
    And I should see the heading "Coterminal Masters" in the "Content Body" region
    And I should see the heading "Study Abroad" in the "Content Body" region

  Scenario: Viewing a postcard block on the Graduate Programs page
    Given I am on "academics/graduate-programs"
    Then I should see the link "Doctoral Program" in the "First sidebar" region
    And I should see the link "Masters Program" in the "First sidebar" region
    And I should see the link "Fields of Study" in the "First sidebar" region
    And I should see the link "Graduate Admissions" in the "First sidebar" region
    And I should see the link "Forms" in the "First sidebar" region
    And I should see the link "Resources" in the "First sidebar" region

  Scenario: Clicking the sidebar menu
    Given I am on "academics/graduate-programs"
    And I click "Overview" in the "First sidebar" region
    Then I should see "Stanford Classics is at the forefront of the study of the ancient Mediterranean world, its languages, history, and cultures" in the "Content Body" region
    And I should see the heading "Undergraduate Programs" in the "Content Body" region
    And I should see the heading "Graduate Programs" in the "Content Body" region
