Feature: Content
  In order to ensure that the Planning website has the correct content
  And access control is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @live @safe
  Scenario: Homepage Anonymous Access
    Given I am an anonymous user
    And I am on the homepage
    Then I should see "Purpose"
    And I should see "Desired Outcomes"
    And I should see "Key Areas"
    And I should see "Your Ideas & Proposals"
    And I should see "Steering Groups"
    And I should see "Guiding Questions"
    And I should see "FAQ"
    And I should see the heading "The Purposeful University"
    And I should see the link "Read our guiding questions"
    And I should see the heading "Creating a shared vision"
    And I should see the heading "Key areas"
    And I should see the link "Learn more about our key areas"
    And I should see the link "Submit your idea/proposal"
    And I should see the heading "Phase 1: Call for Ideas & Proposals"
    And I should see the heading "Phase 2: Area Steering Group Proposal Analysis"
    And I should see the heading "Phase 3: Leadership Visioning & Consultation"
    And I should see the link "Learn more about our timeline"
    And I should see "live such lives that it will be said of you that you are true to the best you know"
    And I should see the heading "Contact"
    And I should see the heading "Quick Links"
    And I should see the heading "Connect"
    # Main menu items.
    When I click "Purpose"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Purpose"
    When I am on the homepage
    And I click "Desired Outcomes"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Desired Outcomes"
    When I am on the homepage
    And I click "Key Areas"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Key Areas"
    When I am on the homepage
    And I click "Your Ideas & Proposals"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Call for Ideas & Proposals"
    When I am on the homepage
    And I click "Steering Groups"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Steering Groups"
    When I am on the homepage
    And I click "Guiding Questions"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Guiding Questions"
    When I am on the homepage
    And I click "FAQ"
    Then I should see the heading "WebLogin"
    And I should not see the heading "FAQ"
    # In-page links.
    When I am on the homepage
    And I click "Read our guiding questions"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Guiding Questions"
    When I am on the homepage
    And I click "Learn more about our key areas"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Key Areas"
    When I am on the homepage
    And I click "Submit your idea/proposal"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Submit Your Ideas & Proposals"
    When I am on the homepage
    And I click "Learn more about our timeline"
    Then I should see the heading "WebLogin"
    And I should not see the heading "Timeline"

  @api @live @safe
  Scenario: Homepage Authenticated Access
    Given I am logged in as a user with the "authenticated user" role
    And I am on the homepage
    Then I should see "Purpose"
    And I should see "Desired Outcomes"
    And I should see "Key Areas"
    And I should see "Your Ideas & Proposals"
    And I should see "Steering Groups"
    And I should see "Guiding Questions"
    And I should see "FAQ"
    And I should see the heading "The Purposeful University"
    And I should see the link "Read our guiding questions"
    And I should see the heading "Creating a shared vision"
    And I should see the heading "Key areas"
    And I should see the link "Learn more about our key areas"
    And I should see the link "Submit your idea/proposal"
    And I should see the heading "Phase 1: Call for Ideas & Proposals"
    And I should see the heading "Phase 2: Area Steering Group Proposal Analysis"
    And I should see the heading "Phase 3: Leadership Visioning & Consultation"
    And I should see the link "Learn more about our timeline"
    And I should see "live such lives that it will be said of you that you are true to the best you know"
    And I should see the heading "Contact"
    And I should see the heading "Quick Links"
    And I should see the heading "Connect"
    # Main menu items.
    When I click "Purpose"
    Then I should see the heading "Purpose"
    When I am on the homepage
    And I click "Desired Outcomes"
    And I should see the heading "Desired Outcomes"
    When I am on the homepage
    And I click "Key Areas"
    And I should see the heading "Key Areas"
    When I am on the homepage
    And I click "Your Ideas & Proposals"
    And I should see the heading "Call for Ideas & Proposals"
    When I am on the homepage
    And I click "Steering Groups"
    And I should see the heading "Steering Groups"
    When I am on the homepage
    And I click "Guiding Questions"
    Then I should be on "guiding-questions"
    And I should see the heading "Guiding Questions"
    When I am on the homepage
    And I click "FAQ"
    And I should see the heading "FAQ"
    # In-page links.
    When I am on the homepage
    And I click "Read our guiding questions"
    And I should see the heading "Guiding Questions"
    When I am on the homepage
    And I click "Learn more about our key areas"
    And I should see the heading "Key Areas"
    When I am on the homepage
    And I click "Submit your idea/proposal"
    And I should see the heading "Submit Your Ideas & Proposals"
    When I am on the homepage
    And I click "Learn more about our timeline"
    And I should see the heading "Timeline"
