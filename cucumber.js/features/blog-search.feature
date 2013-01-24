Feature: As a user, I would like the ability to search the blog
         to find the articles that interest me

  Scenario: Blog Search
    Given I am on the "Blog" page
    When I type "XPF" into the search field
    And Click the search button
    Then I should find all of the blog posts tagged XPF