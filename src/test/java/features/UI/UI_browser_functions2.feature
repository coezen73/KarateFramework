
# Sometimes we also need capabilities of moving on the browser
# in order to our TestAutomation in the script.

Feature:Browser - 'back, forward, reload and refresh' functions

  Scenario: Login and play with the browser back and forth

    Given driver 'https://karatelabs.github.io/karate/karate-core/'
    * delay(1000)
 # click on the distributed link
    And click("//*[@id='site-nav']/nav/ul/li[7]/a")
    * delay(1000)
 # if I want to come back where I was I use driver.back() method:
    * driver.back()
    * delay(1000)
  # And if I want to rewind my action and go to the previous one again:
    * driver.forward()
    * delay(1000)
    * driver.reload()
    * delay(2000)
    * driver.refresh()
    * delay(2000)
 # The difference between reload and refresh is:
  # in refresh() it WON'T  clear the cache. (ön bellek)
  # in reload() it WILL clear the cache.