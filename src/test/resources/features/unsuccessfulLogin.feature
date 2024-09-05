Feature: Unsuccessful login

  Scenario: check login failure
    Given url 'https://reqres.in/api/login'
    And request { "email": 'eve.holt@reqres.in'}
    When method post
    Then status 400
    And print response