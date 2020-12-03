Feature: Karate test suite 1
  Demo of using variables in scenarios
  
  Scenario: Karate Testcase1
    Given def a = 10
    And def d = 20
    
    When def c = a + d
    
    Then assert c == 30
    And print "c = ", c
    And karate.log("test ended")



  Scenario: Karate Testcase2
    Given def a = 10
    * def d = 50

    When def c = a + d

    Then assert c == 60
    * print "c = ", c
    * karate.log("test ended")


  Scenario: Karate Testcase3
    * def a = 40
    * def d = 50

    * def c = a + d

    * assert c == 90
    * print "c = ", c
    * karate.log("test ended")