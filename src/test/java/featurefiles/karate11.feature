Feature: Karate test suite 10
  Demo of javascript function

  Scenario: Java script test case 01
    * def fn1 = function() { return 123; }

    * def fn2 =
    """
    function(id)
    {
    karate.log(id);
    }
    """

    * print fn1()
    * fn2('tintin')