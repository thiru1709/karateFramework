Feature: Karate test suite 11
  Calling static and non static variables of java

  Scenario: Static variable test case
    * def constants = Java.type('misc.AutomationConstants')
    * print constants.devUrl
    * print constants.getDevUrl()

  Scenario: Non Static variable test case
    * def env1 =
    """
    function(){
    var tmp = Java.type('misc.AutomationConstants');
    var constants = new tmp();
    return constants.qaUrl;
    }
    """
    * def qaUrl = call env1
    * print qaUrl

  Scenario: Non Static variable test case
    * def env1 =
    """
    function(){
    return Java.type('misc.AutomationConstants').qaUrl;
    }
    """
    * def qaUrl = call env1
    * print qaUrl
