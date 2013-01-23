Feature: Example feature
  As a user of the Red Badger Website
  I want to be able to easily find information

  Scenario: Navigation to What we Do
    Given I am on the Homepage
    When I click on the "What we do" link
    Then The page title should be "About us"

  Scenario: Navigation to Meet our Team
    Given I am on the Homepage
    When I click on the "Meet our team" link
    Then The page title should be "Meet the team"

  Scenario: Navigation to Join us
    Given I am on the Homepage
    When I click on the "Join us" link
    Then The page title should be "Join us"