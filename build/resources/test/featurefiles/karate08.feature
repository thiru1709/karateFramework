Feature: Karate test suite 07
  Rest API end to end scenario


  Scenario: create fetch delete employee test
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"tintin","salary":"202020","age":"23"}
    When method POST
    Then status 200
    * def id = response.data.id
    * match response.data.name == "tintin"

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"tintin","salary":"202020","age":"23"}
    When method put
    Then status 200


    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200