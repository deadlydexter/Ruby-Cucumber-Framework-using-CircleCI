Feature: Test

  Scenario: Using the cheese machine
    Given I have no cheese
    When I press the make cheese button
    Then I should have 1 piece of cheese