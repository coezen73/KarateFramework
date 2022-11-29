Feature: Mouse over function
# We combine mouse() method with other methods like:
# .go() - .click() - .up() - .down() We can even chain with submit()

  Scenario: Mouse over function testing

    Given driver 'https://training.rcvacademy.com/'
    And delay(2000)
    * driver.maximize()
    * delay(2000)
    * screenshot()
# To move the mouse to a certain web element-->
    And mouse().move("//a[text()= 'Get Access']").go()
    * delay(2000)
    * screenshot()
#-------------------------------------------------------------------------

# To move and click to a certain web element-->

  Scenario: Mouse over function testing2

    Given driver 'https://training.rcvacademy.com/'
    And delay(2000)
#    And mouse().move("//a[text()= 'Get Access']").click()
# Shortcut:
    And mouse("//a[text()= 'Get Access']").click()
    * delay(2000)
    * screenshot()
# we have also .doubleclick() method.(same as .click()method)

#------------------------------------------------------------------------------

  Scenario: Mouse over function testing3
# mouse go and then click:
    Given driver 'https://training.rcvacademy.com/'
    And delay(2000)
    And mouse().move("//a[text()= 'Get Access']").go()
    * delay(2000)
    And mouse().move("//a[text()= 'Get Access']").click()
    * delay(2000)

#-------------------------------------------------------------------------------

  Scenario: Mouse over function testing4
# mouse go and then click:
    Given driver 'http://practice.cybertekschool.com/hovers'
    And delay(2000)
    * screenshot()
    And mouse().move("//*[@id='content']/div/div[1]").go()
    * delay(2000)
    And mouse("//*[@id='content']/div/div[1]").click()
    * delay(2000)
    * screenshot()
    And mouse("//a[text()= 'View profile']").click()
    * delay(2000)
    * screenshot()