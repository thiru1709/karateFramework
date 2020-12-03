Feature: Karate text fixture test suite
  Demo using  after scenarios for after feature

  Background: Before scenario
    * print "before scenario"
    * configure afterScenario =
    """
    function (){
    karate.log("From after scenario");
    }
    """
    * configure afterFeature =
    """
    function (){
    karate.log("From after feature");
    }
    """



  Scenario: Test case 1
    * print "from test case 1"

  Scenario: Test case 2
    * print "from test case 2"