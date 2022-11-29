
 Feature: Login Test
 This is Login Test

Scenario: Login with valid login credential testing

   Given driver 'https://www.saucedemo.com/'
# we can inspect the page and get the locators in different variations like xPath:
# (don't forget to re-arrange the locator's quotes: double outside, single inside)
   And input("//*[@id='user-name']","standard_user")
   And input("//*[@id='password']","secret_sauce")
# action
   When click("//*[@id='login-button']")
# We need to verify: For example webpage we logged in:
   Then match driver.title == "Swag Labs"

#-----------------------------------------------------------------------------------------------

 # In case of having multiple scenarios and run with different browser
 # (check documentation in Github karate UI):


   Scenario: Login with valid login credential testing2
# To specify the version of the browser(msedge) we use this line:
 * configure driver = {type : 'msedge'}
     Given driver 'https://www.saucedemo.com/'
     And input("//*[@id='user-name']","standard_user")
     And input("//*[@id='password']","secret_sauce")
     When click("//*[@id='login-button']")
     Then match driver.title == "Swag Labs"

# But if we want to launch browsers through the chrome - firefox or safari etc. driver,
# we have to download all of these drivers and install on our machine as well
# --> and then specify that driver and the location of it where ever we have downloaded and kept them.

# for example lets do the geckodriver: download geckodriver(PROBLEM OCCURED!) --> browser-drivers file in C:\browserdrivers
# we have to specify the path of the executable

 #  Scenario: Login with valid login credential Firefox
# To specify the version of the browser(msedge) we use this line:
 #    * configure driver = {type : 'geckodriver', executable : 'C:\\geckodriver.exe'}
 #    Given driver 'https://www.saucedemo.com/'
 #    And input("//*[@id='user-name']","standard_user")
 #    And input("//*[@id='password']","secret_sauce")
 #    When click("//*[@id='login-button']")
 #    Then match driver.title == "Swag Labs"

# We can configure our driver with the specific port as well:
# * configure driver = { type: 'chromedriver', port: 9515, executable: 'chromedriver' }