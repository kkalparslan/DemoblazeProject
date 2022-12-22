Feature: Login Test - The user should be able to login with valid credentials

  Background: Go to home page login
    Given The user is on the login page

  @loginWithoutParemeters
  Scenario: Positive Scenerio 1 - user should be able to login
    When The user enters valid credentials
    Then Verify "Welcome alpimka"


  @loginWithParemeters
  Scenario: Positive Scenerio 2 - user should be able to login
    When The user enters "alpimka" and "12345678" and click login button
    Then Verify "Welcome alpimka"


  @loginWithScenarioOutline
  Scenario Outline: Positive Scenerio 3 - user should be able to login
    When The user enters "<username>" and "<password>" and click login button
    Then Verify "<welcomeUser>"

    Examples:
      | username | password | welcomeUser     |
      | alpimka  | 12345678 | Welcome alpimka |


  @loginWithDataTableAndScenarioOutline
    Scenario Outline: Positive Scenerio 4 - user should be able to login
    When The user enters valid username and password
    |username|<user>|
    |password|<password>|
    Then Verify "<welcomeUser>"

    Examples:
    |user|password|welcomeUser|
    |alpimka|12345678|Welcome alpimka|



