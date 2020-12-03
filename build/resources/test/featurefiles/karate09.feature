Feature: Karate Test suite 08
  using url and path


  Scenario: Url and path test case 01
    Given url "https://reqres.in"
    And path "/api/users?page=2"
    When method GET
    Then status 200
    * match response.page == 1

  Scenario: Url and path test case 02
    Given url "https://reqres.in"
    And path "/api/users"
    And param page = 2
    When method GET
    Then status 200
    * match response.page == "##"
