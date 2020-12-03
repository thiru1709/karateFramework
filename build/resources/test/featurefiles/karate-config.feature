Feature: Karate config test suite
  Reading the global variable from karate-config.js file
  
  
  Scenario: Karate config testcase 1
    Given url base_url
    And path misUsers
    When method GET
    Then status 200