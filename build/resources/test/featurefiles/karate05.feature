Feature: Karate Test suite 04
  Testing Rest API


  @rest
  Scenario: Rest Api Test case
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=37"

    When method POST
    Then status 200
    And match response contains "98.6"
    And match response //string contains "98.6"
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == 'xml'
    And assert responseTime <= 2000