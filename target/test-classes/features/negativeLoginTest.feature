Feature: Negative Login Test - The user should NOT able to login with invalid credantials

  Background: Go to home page login
    Given The user is on the login page

    @negativeLoginTest
  Scenario Outline: Negative Scenario - User should NOT able to login with invalid credantials

    When The user enters "<invalidUsername>" and "<invalidPassword>" and click login button
    Then Verify that invali "<Message>"

    Examples:
      | invalidUsername | invalidPassword | Message                                |
      | alpimka         |                 | Please fill out Username and Password. |
      |                 | 12345678        | Please fill out Username and Password. |
      | alpimka         | invalidPassword | Wrong password.                        |
      | invalidUsername | 12345678        | User does not exist.                   |

