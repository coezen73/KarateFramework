
Feature:SwitchPage function
# In the applications there is a possibility, that once we click on particular
# link or a web element, it might open a new tab or page.This happens very frequently.
# We need to switch to a new tab and there, we might perform new functions or test case.
# And we do these actions back and forth very often.

  Scenario: switchPage function testing

    Given driver 'https://training.rcvacademy.com/'
    * delay(5000)
# By default,the control of 'Automation Practice page' is
# still on first page--> training.rcvacademy.com
# In order to switch to the new page,we have 3 ways to switch --> Page - Title - URL
# we can click by the Text:
    And click('{}Automation Practice page')
    * delay(5000)
# I use switchPage() method by 'Page Title'
   * switchPage('(29) Automation Practice')
   * delay(5000)
# I switch this time by the 'URL':
    * switchPage('training.rcvacademy.com')
    * delay(5000)
# and back again by the 'Index Number':
    * switchPage(1)
    * delay(5000)
    * switchPage(0)
    * delay(5000)

#----------------------------------------------------------------------

 Scenario: Practice-Cybertek switchPage
   Given driver 'http://practice.cybertekschool.com/javascript_alerts'
   * delay(5000)
   And click('{}CYDEO')
   * delay(5000)
   * switchPage('(1) New Message!')
   * delay(5000)
   * switchPage('practice.cybertekschool.com/javascript_alerts')
   * delay(2000)
   * switchPage(1)
   * delay(2000)
   * switchPage(0)
   * delay(2000)
