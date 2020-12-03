Feature: Karate Test suite 06
  Testing Rest API with json output


  @rest
  Scenario: Rest Api Test case
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method GET
    Then status 200
#    And match response contains "Garrett Winters"
    * match responseType == 'json'
    * assert responseTime <= 800
#    * print response
    * match response.status == "success"
    * match response.status == "#string"
    * match response.data == "#array"
    * print response.data[0].employee_name
    * match response.data[0].employee_name contains "Tiger"