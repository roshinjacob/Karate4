Feature:Get list of user
  Background:
    * url 'https://reqres.in/api/'
  Scenario: get user list
    Given path 'users?page=1';
    When method GET
    Then status 200
    And match response ==  read('classpath:schema/getListJSONSchema.json');

