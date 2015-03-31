Feature: FAQ
  In order to ensure that the CAW website is editable by its site owners
  As an authenticated user
  I want to check that I can create and edit an faq

@api
Scenario: FAQ view is correctly placed
   Given I am on "welcome-center/managers-guide/frequently-asked-questions-faqs"
   Then I should see a ".view-display-id-grouping_no_title_block" element

@api
Scenario: FAQ expands when clicked
  Given I am on "welcome-center/managers-guide/frequently-asked-questions-faqs"
  When I click "Will the Welcome Center be open during winter closure?"
  Then I should see "No." in the "Content Body" region
