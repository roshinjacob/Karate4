#Unable to gte output when the last line is not commented
Feature: validate user data in the json external file
Background:
* url 'https://jsonplaceholder.typicode.com'
  Scenario: validate user data
    Given path 'posts'
    And def data = read('classpath:schema/userData.json');
    When method GET
    Then status 200
    And print 'response:' , response
   # And match response contains  data

