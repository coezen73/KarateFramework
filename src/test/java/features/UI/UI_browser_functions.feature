Feature: Browser Functions

  Scenario: Login and check the browser functions testing1

    Given driver 'https://www.saucedemo.com/'
 # Setting the size(dimensions) of the browser:
    And driver.dimensions = {x:0, y:0, width:800, height:500}
 # Storing the given dimensions in the variable and printing them:
    * def dims = driver.dimensions
    * print dims
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']","secret_sauce")
    * delay(2000)
    When click("//*[@id='login-button']")
 # Verifying the Title of the page:
    Then match driver.title == "Swag Labs"
  # Verifying the URL:
    And match driver.url == 'https://www.saucedemo.com/inventory.html'

