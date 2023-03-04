Feature: Some of the general functionality verification


  Scenario: Dropdown option verification
    Given user is already logged in to The Web table app
    When user is on the Order page
    Then user sees below options under product dropdown
      | MoneyCog   |
      | Familybea  |
      | Screenable |


  Scenario: Payment options verifications
    Given user is already logged in to The Web table app
    When user is on the Order page
    Then user sees VISA as enabled payment option
    Then user sees MasterCard as enabled payment option
    Then user sees American Express as enabled payment option


  Scenario: Order placement scenario
    Given user is already logged in to The Web table app
    When user is on the Order page
    And user enters quantity "2"
    Then user clicks to the calculate button
    And user enters customer name"Jane Doe"
    And user enters street "7th Street"
    And user enters city "New York"
    And user enters state "New York"
    And user enters zip "99999"
    And user selects payment option "American Express"
    And user enters credit card number "1111222233334444"
    And user enters expiration date "12/25"
    And user clicks to process order button
    Then user should see "Jane Doe" in the first row of the web table


  @wttest
  Scenario Outline: Order placement scenario
    Given user is already logged in to The Web table app
    When user is on the Order page
    And user enters quantity "<quantity>"
    Then user clicks to the calculate button
    And user enters customer name"<customerName>"
    And user enters street "<street>"
    And user enters city "<city>"
    And user enters state "<state>"
    And user enters zip "<zip>"
    And user selects payment option "<paymentType>"
    And user enters credit card number "<cardNumber>"
    And user enters expiration date "<expDate>"
    And user clicks to process order button
    Then user should see "<expectedName>" in the first row of the web table

    Examples:

      | quantity | customerName | street | city | state | zip   | paymentType | cardNumber       | expDate | expectedName |
      | 3        | John Doe     | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | John Doe     |
      | 3        | Jane Doe     | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Jane Doe     |
      | 3        | Jack Dore    | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Jack Dore    |
     #| 3        | Mike Net      | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Mike Net      |
     #| 3        | Johny Dorm    | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Johny Dorm    |
     #| 3        | Mike Vong     | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Mike Vong     |
     #| 3        | July Stone    | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | July Stone    |
     #| 3        | Vivian Dowsan | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Vivian Dowsan |
      | 3        | Mary Quri    | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Mary Quri     |
      | 3        | Pitt Brad    | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Pitt Brad     |



