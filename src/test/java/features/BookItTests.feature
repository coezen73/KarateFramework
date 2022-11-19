
Feature: Bookit Api tests


  Background:
    * def baseUrl = 'https://cybertek-reservation-api-qa3.herokuapp.com/'
      # point another feature file by using call keyword:
    * def AuthFeature = call read('classpath:features/BookIt.Auth.feature')
    * def accessToken = AuthFeature.token
    * def firstname = AuthFeature.firstname
    * print firstname
    * print 'Token From Background',accessToken


  Scenario: get user information
    Given url baseUrl
    And path 'api/users/me'
    # We get the key/value parameters from Authorization part in Postman
    And header Authorization = 'Bearer ' + accessToken
    And header Accept = 'application/json'
    When method GET
    Then status 200
    And print response
    # to verify Json to Json, copy the response from our runner konsole and assert:
    And match response == {"id":140,"firstName":"Ase","lastName":"Norval","role":"student-team-leader"}


  Scenario:  get campus information
    Given url baseUrl
    And path 'api/campuses'
    And header Authorization = 'Bearer ' + accessToken
    And header Accept = 'application/json'
    When method GET
    Then status 200
    And print response
# We get a huge list of json data.
# It wont be a good idea to copy and paste all data
# read the campuses.json file in the data directory:
    And def expectedCampuses = read('classpath:data/campuses.json')
    And match response == expectedCampuses