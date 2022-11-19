Feature:  Parameters examples

# I can use the "Background" to define my URLs
# and use them with different paths in different test scenarios.
  Background:
    * def baseUrl = 'https://petstore.swagger.io/v2/store'
    * def spartanUrl = 'http://184.72.102.39:8000/'
    * def hrUrl = 'http://184.72.102.39:1000/ords/hr'


  Scenario: path parameters
    Given url baseUrl
    And path "inventory"
    When method get
    Then status 200


  Scenario: get all spartans with path
    Given url spartanUrl
    And path "api/spartans"
    When method get
    Then status 200
    And print response

  Scenario: get one spartan only
    Given url spartanUrl
    And path "api/spartans"
    And path "117"
    When method get
    Then status 200
    And print response
    And match response == {"id": 117,"name": "Danny DeVito","gender": "Male","phone": 12345678910}


  Scenario: get ones spartan only
    * def expectedSpartan =
  """
  {
    "id": 118,
    "name": "Brad Pitt",
    "gender": "Male",
    "phone": 98712365412
}}
    """
    Given url spartanUrl
    And path "api/spartans"
    And path "118"
    When method get
    Then status 200
    And print response
    And match response == expectedSpartan


  Scenario:  query parameters
    Given url spartanUrl
    And path "api/spartans/search"
    And param nameContains = 'o'
    And param gender = 'Female'
    When method GET
    Then status 200
    And match header Content-Type == 'application/json'
    And print response
    #verify each content has gender = Female
    And match each response.content contains {"gender":"Female"}
    #second way of iteration
    And match each response.content[*].gender == 'Female'
    And match response.content[0].name =='Celine Dion'

  Scenario: hr regions example
    Given url hrUrl
    And path 'regions'
    When method GET
    Then status 200
    And print response
    And match response.limit == 25
    And match each response.items[*].region_id == '#number'


  Scenario: Get a spartan with request header
    Given url spartanUrl
    And path "api/spartans"
    And header Accept = 'application/json'
    When method GET
    Then status 200

  Scenario: Create a new spartan
    Given  url spartanUrl
    And path "api/spartans"
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And request
  """
    {
        "gender": "Female",
         "name": "Ana De Arma",
         "phone": 3123781237
    }
    """
    When method POST
    Then status 201
    And print response


    Scenario: Create another Spartan
      Given url spartanUrl
      And path "api/spartans"
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'
      And request
      """
      {
      "gender": "Female",
      "name": "Charlize Theron",
      "phone": 1234567890
      }
      """
      When method POST
      Then status 201
      And print response
