Feature: Bing search functionality
  Agile story: As a user, when I am on the Bing search page should be able to search anything and see relevant result


  Scenario: Search result title verification
    Given user is on the Bing search page
    When user enters orange in the Bing search box
    Then user should be able to see orange in the title


  Scenario: Search result title verification
    Given user is on the Bing search page
    When user enters "orange" in the Bing search box
    Then user should be able to see "orange" in the title
