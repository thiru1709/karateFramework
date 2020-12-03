Feature: suite 14
  Reading csv ddt

  Background:
    * def data = read('classpath:data.csv')

  Scenario Outline: reading csv ddt test case
    * print "<custid>, <custname>, <age>"
    * def json1 = {"last_name" : <custname>}
    * print json1

    Examples:
    | data |