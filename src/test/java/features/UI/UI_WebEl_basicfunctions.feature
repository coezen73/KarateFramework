Feature: WebElement  Functions

  Scenario: WebElements - focus, input, clear and click(and or submit) functions

 # to be able to follow and see the actions, we add waiting time after each statement:
 # It is not a good practice. But we use it to observe the learning process
    Given driver 'https://www.saucedemo.com/'
    # focus(.myClass): to pick the place for our cursor:
    * focus("//*[@id='password']")
    * delay(3000)
  # to input(enter):
    And input("//*[@id='user-name']","standard_user")
    * delay(3000)
  # to clear(#myInput):
    * clear("//*[@id='user-name']")
    * delay(3000)
  # enter again:
    And input("//*[@id='user-name']","standard_user")
    * focus("//*[@id='password']")
    * delay(3000)
    And input("//*[@id='password']","secret_sauce")
    * delay(3000)
 # Basically the function of 'submit' is as same as click,
   # We can use only 'click' or 'submit' or 'both together':
    When submit().click("//*[@id='login-button']")
    * delay(3000)