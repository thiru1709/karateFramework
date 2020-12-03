Feature: Karate db test suite
  Testing db output

  Background: dbInit
    * def db = Java.type('misc.MyDbUtil')

  Scenario: select statement test case
    * def rows = db.selectStatement("select * from tools")
    * print rows
    * match rows contains "Karate"

  Scenario: insert statement test case
    * def res = db.insertStatement("insert into tools values(30,'company1','company2')")
    * print res
    * match res == "Success"

  Scenario: Update statement test case
    * def rows_affected = db.updateStatement("update tools set toolname = 'company11' where toolid = 30 ")
    * print rows_affected
    * assert rows_affected >= 1

  Scenario: Delete statement test case
    * def rows_deleted = db.deleteStatement("delete from  tools where toolid = 30 ")
    * print rows_deleted
    * assert rows_deleted >= 1
