#unable to get OP
Feature: Test mocking api to stub responses
  Background:
    * def response = { id: 1, name: 'Mocked Service' }
    * def server = karate.mock()
  Scenario: PI stubbing example
    Given path '/mock-endpoint'
    When method GET
    Then status 200
    And response.id == 1
    And response == { id: 1, name: 'Mocked Service' }