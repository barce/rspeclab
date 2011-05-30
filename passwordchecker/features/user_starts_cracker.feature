Feature: user starts cracker

  As a user
  I want to start a cracker
  So that I can check my passwords strength

  Scenario: start cracker
    Given I am not yet checking
    When I start a new cracker
    Then I should see "Welcome to Password Checker!"
    And I should see "Enter password:"

