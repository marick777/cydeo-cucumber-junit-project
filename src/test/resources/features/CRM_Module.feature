@wip

Feature: CRM Module verification
  Agile story: As a user, I should be able to access the Chat and Calls module

  Background: user is on the home page of the CRM application
    Given user is on the CRM login page
    When user enters valid "hr14@cybertekschool.com" username
    And user enters valid "UserUser" password
    Then user clicks to CRM login button



    Scenario: As a user, I should be able to access the Chat and Calls module.

      Given user should be able to access the Chat and Calls module
      Then user should be able to see Message, Notification, Settings and Active Stream modules

