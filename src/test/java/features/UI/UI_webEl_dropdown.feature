Feature: WebElement  Functions

  Scenario: WebElements - dropdown/select functions testing
# We can use these select() options only if we have 'plain-vanilla' drop boxes
# If there is any 'enhanced' - based on JS, 'multi-select' we must use couple of clicks..
    Given driver 'https://www.salesforce.com/au/form/signup/freetrial-sales/?d=70130000000EqoP'
    * delay(3000)
    * driver.fullscreen()
 # select by displayed text-->
    # {}: sees the whole page + 'exact text' that we want to get
    # -->This time, ID is dynamic locator. So, we use 'name' as locator now:
   And select("//*[@name='UserTitle']", '{}IT Manager')
    * delay(3000)
# select by partial text-->
  # {^} takes the part of the text and search for it:
   And select("//*[@name='UserTitle']", '{^}Operations')
    * delay(3000)
# select by value-->
  # Value is anything associated with 'value Tag' in our inspection for locators:
   And select("//*[@name='UserTitle']", 'CxO_General_Manager_ANZ')
    * delay(3000)
  # we can also locate it by index number --> just index number, no quotes!:
  # indexNo=7 --> Others
   And select("//*[@name='UserTitle']", 7)
    * delay(3000)

