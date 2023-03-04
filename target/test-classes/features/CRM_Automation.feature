@wip
Feature: CRM login functionality
  Agile story:As a user, I should be able to save my user credential on a computer.

  Scenario: Save my user credential on a computer verification
    Given user is on the CRM login page
    When user enters valid "hr14@cybertekschool.com" username
    And user enters valid "UserUser" password
    Then user should be able to save credentials

