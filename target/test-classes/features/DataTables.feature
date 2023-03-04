Feature: Cucumber Data Table implementations practice


  Scenario: List of fruits and vegetables i like
    Then user should see below list
      | orange     |
      | apple      |
      | kiwi       |
      | strawberry |
      | tomato     |
      | pear       |
      | eggplant   |


  Scenario: List og pets types i love
    Then i will share my favorites
      | Kangal           |
      | Husky            |
      | Golden Retriever |
      | Golden Doodle    |
      | Munchkins        |
      | Ragdoll cat      |
      | Siberian cat     |


  Scenario: Officer reads data about driver
    Then officer is able to see any data he wants
      | name    | Jane         |
      | surname | Doe          |
      | age     | 29           |
      | address | somewhere    |
      | state   | CA           |
      | zipcode | 99999        |
      | phone   | 111-222-3333 |

  @dataTable
  Scenario: User should be able to see all 12 months in months dropdown
    Given User is on the dropdowns page of practice tool
    Then User should see below info in month dropdown
      | January   |
      | February  |
      | March     |
      | April     |
      | May       |
      | June      |
      | July      |
      | August    |
      | September |
      | October   |
      | November  |
      | December  |
