Feature: Get/Set Value
# When we want to check the value of a particular webElement:
  # And match value('.myClass') == 'Some Value'

  Scenario: Get/Set Value testing

    Given driver 'https://training.rcvacademy.com/'
    And delay(3000)
# How we GET the value? (In Your name box)
# First, store the desired value in the variable:
    * def name_value = value("//*[@placeholder='Your name']")
    And print name_value
    * delay(3000)
# How we SET the Value?
    And value("//*[@placeholder='Your name']", "Cemil Oezen HAEGER")
# GET  the new set Value(Cemil Oezen HAEGER): --> Create another variable again:
    * def name_value1 = value("//*[@placeholder='Your name']")
    And print name_value1
    * delay(3000)
    * def name = value("//*[@id='name']")
    And print name

