
Feature:Browser - 'fullscreen, maximize, minimize and quit()' functions

  Scenario: Login and play with the browser back and forth

    Given driver 'https://karatelabs.github.io/karate/karate-core/'
    * delay(1000)
    And click("//*[@id='site-nav']/nav/ul/li[7]/a")
    * delay(1000)
 # fullscreen() --> shortcut: fn key +f11
  * driver.fullscreen()
  * delay(2000)
 # to maximize the browser:
    * driver.maximize()
    * delay(1000)
 # to minimize (as an icon on the menu bar):
    * driver.minimize()
    * delay(2000)
    * driver.maximize()
    * delay(1000)
 # quit()--> To close the browser.
 # (normally we don't need it. Karate close the browser automatically)
    * driver.quit()