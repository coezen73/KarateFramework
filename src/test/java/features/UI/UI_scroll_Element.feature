Feature: Scrolling the elements on the page


  Scenario: Scroll testing

    Given driver 'https://training.rcvacademy.com/'
    * delay(3000)
    * driver.maximize()
    * delay(2000)
# Scrolls to the element. --> * scroll('#myInput') + input
   * scroll("//*[@placeholder='First name']").input("Cemil")
   * delay(2000)
   * scroll("//*[@placeholder='Email']").input("Coezen73")
   * delay(2000)
   * scroll("//a[@class='btn btn-primary zen-custom-elm dynamic-button btn-block']").click()
   * screenshot("//*[@id='page']/div[6]/div[2]")
   * delay(2000)


  Scenario: Scroll + other functions Testing
    Given driver 'http://practice.cybertekschool.com/'
    * delay(2000)
    * driver.maximize()
    * delay(1000)
    * highlight("//*[@id='content']/ul/li[28]/a")
    * delay(1000)
    * scroll("//*[@id='content']/ul/li[28]/a").click()
    * delay(2000)
    * input("//*[@id='content']/div/div/div/input", '5')
    * delay(2000)
    And click('{}CYDEO')
    * delay(5000)
    * switchPage('(1) New Message!')
    * delay(2000)
    * switchPage(0)
    * delay(2000)
    * click('{}Home')
    * delay(2000)
    * scroll("//*[@id='content']/ul/li[30]/a").click()
    * delay(4000)
    And click('{}Click for JS Confirm')
    * delay(3000)
    * dialog(true)
    * delay(5000)