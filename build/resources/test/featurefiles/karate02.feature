Feature: Karate Test suite 2
  this feature contains the scenarios demonstrating how to validate json content

  Scenario: JSON Test case 1
    Given def json =   { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: JSON Test case 2
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}