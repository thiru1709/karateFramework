Feature: Karate Test suite 05
  Testing Soap API with external payload file


  @soap
  Scenario: Soap Api Test case with external payload file
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
#    And request read("C:/work/gradle_project/src/test/java/payloaddata/soapAPIinput.xml")
    And request read("../payloaddata/soapAPIinput.xml")
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    And match response contains "122"
    And match response //CelsiusToFahrenheitResult == "122"
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == 'xml'
    And assert responseTime <= 2000