Feature: Search Google

  Scenario: Search Google With some keyword
    Given I Open Google Home Page
    When I Search for "Apple"
    Then I should get first data contains "Apple"