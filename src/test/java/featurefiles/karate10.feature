Feature: Karate Test suite 08
  Data driven testing


  @ddt
  Scenario Outline: DDT testcase
    Given url "https://reqres.in"
    And path "/api/users?page=<pno>>"
    When method GET
    Then status 200
    * match response.page == 1


    Examples:
    | pno |
    |1    |
    |2    |
    |3    |
    |4    |
    |5    |
