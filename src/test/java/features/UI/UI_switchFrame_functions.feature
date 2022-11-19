Feature: SwitchFrame Function
# iframe--> embedded subpage inside the mainPage / html within the html-
# There might be a need in the app.you have an iframe within the webpage.
# And there might be a webElement we want to reach which is there inside the iframe.

  Scenario: Switching the frames by using switchFrame function

    Given driver 'http://practice.cybertekschool.com/iframe'
    * delay(2000)
    * driver.maximize()
# switchFrame() method with locator:
    And switchFrame("//*[@id='mce_0_ifr']")
    * delay(2000)
    And clear('#tinymce')
    And input("//*[@id='tinymce']", "Hello everyone. Finally I made it!   ")
    * delay(5000)
 #  I couldn't get read of 'Your content goes here.' text.

#-----------------------------------------------------------------------------------------------

  Scenario: Switching Frames only by using Index Number:
  * configure driver = {type:  'msedge'}
    Given driver 'https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_iframe'
    * delay(2000)
    And switchFrame(0)
    * delay(5000)
    And click("//*[@id='navbtn_menu']")
    * delay(5000)
 # Problem with the last step -> click. (maybe wrong locator?)