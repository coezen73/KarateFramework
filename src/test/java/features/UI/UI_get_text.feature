Feature: Get & verify the text content
# And match text('.myClass') == 'Class Locator Test'

  Scenario: Get the text in webElement testing
# We use text() method by match keyword:
    Given driver 'https://training.rcvacademy.com/'
    And delay(2000)
# First, we need to store the desired text that we will fatch
    * def courseText = text("//*[@id='process27']/div[2]/div/div[1]/div/div[3]/h3/span")
    And print courseText
# And then we can verify:
    And match courseText == "FREE premium courses!"

#-------------------------------------------------------------------------------------------

  Scenario: Get the text in webElement testing2
# We can directly verify in one line as fatch & match::
    Given driver 'https://training.rcvacademy.com/'
    And delay(2000)
    And match text("//*[@id='process27']/div[2]/div/div[1]/div/div[3]/h3/span") == "FREE premium courses!"