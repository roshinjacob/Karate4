Feature: API Login Test

  Scenario: Successful login request
    Given url 'https://reqres.in/api/login'
    And request { "email": 'eve.holt@reqres.in', "password": 'cityslicka'}
    When method post
    Then status 200

    # Validate the response
    And match response == { token: 'QpwL5tke4Pnpja7X4' }