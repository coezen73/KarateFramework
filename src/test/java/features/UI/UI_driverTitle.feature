
Feature: Getting the title of the current page
  # driver.title --> get the current page title for matching:
  # Then match driver.title == 'Test Page'
  # We can also store it in variable and match it later.
  @wip
  Scenario: Switching the pages by using switchPage function

    Given driver 'https://training.rcvacademy.com/'
    * delay(5000)
# I store the page title in the variable:
    * def page_title = driver.title
    And print page_title
    And match page_title == 'RCV Academy & Software Testing Mentor | Launch your Software Testing Career!'

# I can also verify it directly:
# And match driver.title == 'RCV Academy & Software Testing Mentor | Launch your Software Testing Career!'