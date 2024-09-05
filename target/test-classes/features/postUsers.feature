Feature:
Background:
  * url 'https://reqres.in/api/'
  Scenario Outline: create user details
    Given path 'users';
    And request <reqBody>
    When method POST
    Then status 201
  And match response == read('classpath:schema/postUserDetailsJSON.json')
    Examples:
      |reqBody|
      | {"name":"kiara", "job":"Tester"}     |
      |  {"name":"kiran", "job":"PM"}        |
      |  {"name":"Roshin", "job":"Engineer"} |