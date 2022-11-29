Feature: Get Attribut



  Scenario: Get attribute testing

    Given driver 'https://training.rcvacademy.com/'
    And delay(3000)
# to fatch the willing attribute,
#  we use attribute("element locator" , "any attribute name")
# and if I am getting some value I can store it as well:
    And def Att = attribute("//*[@id='cu-form-1657531827922']/div/div[3]/div/a", "data-submithref")
    And def Att2 = attribute("//*[@id='cu-form-1657531827922']/div/div[3]/div/a", "data-uniqid")
    And print Att
    And print Att2
    When match Att2 == '1657519241148'
    Then print "Data uniqid matched."