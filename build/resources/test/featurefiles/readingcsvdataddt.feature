Feature: suite 14
  Reading csv ddt

  Scenario Outline: reading csv ddt test case
    * print "<custid>, <custname>, <age>"
    * def json1 = {"last_name" : <custname>}
    * print json1

    Examples:
    | read('classpath:data.csv') |