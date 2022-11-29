Feature: Highlighting the elements on the page


  Scenario: Highlight elements testing

    Given driver 'https://training.rcvacademy.com/'
    * delay(3000)
    * highlight("//input[@placeholder='Your name']")
    * delay(2000)
    * highlightAll('input')
    * delay(5000)

#----------------------------------------------------------------------

  Scenario: Highlight elements testing2

    Given driver 'http://practice.cybertekschool.com/'
    * delay(1000)
    * driver.maximize()
    * delay(3000)
    * highlight("//*[@id='content']/div/div/h1")
    * delay(2000)
    * highlight("//*[@id='content']/ul")
    * highlight("//*[@id='content']/ul/li[7]/a")
    * highlight("//*[@id='content']/ul/li[3]/a")
    * highlight("//*[@id='content']/ul/li[5]/a")
