Feature: Captured Screenshot function
# Screenshots in Karate UI is embedded in Html report
# If the test case will be failed, then we  have the screen shot automatically.
# But if we want to get a screenshot all the time,There are two forms,
# if a locator is provided - only that HTML element will be captured,
# else the entire browser viewport will be captured.-> * screenshot(), or * screenshot('#someDiv')

  Scenario: Screenshot function testing
    Given driver 'https://training.rcvacademy.com/'
# Gets the screenshot  in general:
    * screenshot()
    * delay(5000)
# Screenshot with a specific webElement by providing the locator.(Get Access button):
    * screenshot("//a[text()='Get Access']")
    * delay(5000)

# To disable the auto screenshot -> add 'false' to the method:

  Scenario: Disable screenshot function testing
    Given driver 'https://training.rcvacademy.com/'
    * screenshot()
    * delay(5000)
    * screenshot("//a[text()='Get Access']",false)
    * delay(5000)

# To store the screenshot in a file as byte:

  Scenario: Store the screenshot testing
    Given driver 'https://training.rcvacademy.com/'
    * screenshot()
    * delay(5000)
    * def bytear = screenshot("//a[text()='Get Access']",false)
    * def file = karate.write(bytear, 'screenshot.png')
    * print 'screenshot saved to:', file
# By default, the 'png file' will be stored in the 'Target file'.