
Feature: Handling Pop-ups
# In Karate UI we have 2 arguments to deal with pop-ups:
# 1) Cancel: * dialog(false), 2) Enter text and accept: * dialog(true, 'some text')

Scenario: Handling pop-ups

  Given driver 'http://practice.cybertekschool.com/javascript_alerts'
  * delay(2000)

# Alert Cancelling:
  And click('{}Click for JS Alert')
  * delay(2000)
  * dialog(false)
  * delay(2000)
# Accept Confirmation:
    And click('{}Click for JS Confirm')
    * delay(2000)
    * dialog(true)
    * delay(2000)
# Not Accept Confirmation:
    And click('{}Click for JS Confirm')
    * delay(2000)
    * dialog(false)
    * delay(2000)
# Enter Text and Accept:
    And click('{}Click for JS Prompt')
    * delay(2000)
    * dialog(true, 'I accepted.')
    * delay(2000)

#------------------------------------------------------------------------------------------


  Scenario: Handling Pop-ups, Exercise-2 Alert:

    Given driver 'https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert'
    * delay(2000)
    And switchFrame(1)
    * delay(2000)
    And click("//button[text()='Try it']")
    * delay(2000)
    * dialog(false)
    * delay(2000)

  Scenario: Handling Pop-ups, Exercise-3 confirm:

    Given driver 'https://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm'
    * delay(2000)
    And switchFrame(1)
    * delay(2000)
    And click("//button[text()='Try it']")
    * delay(2000)
    * dialog(false)
    * delay(2000)

  Scenario: Handling Pop-ups, Exercise-4 Enter some text:

    Given driver 'https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt'
    * delay(2000)
    And switchFrame(1)
    * delay(2000)
    And click("//button[text()='Try it']")
    * delay(2000)
    * dialog(true, 'Hallo Cemil, gut gemacht!')
    * delay(5000)