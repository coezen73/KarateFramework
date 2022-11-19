Feature: match keyword


Scenario: matching example

  * def name = 'Ralf'
    # we use match keyword to check. It is similar to 'Assert.assertEquals(name,"Ralf");'
  * match name == 'Ralf'
  * match name != 'Ralph'


    Scenario: matching example with JSON
      * def employee =
"""
    {
    "employee_id": 100,
    "first_name": "Steven",
    "last_name": "King",
    "phone_number": "515.123.4567",
    "active": "true",
    "job_id": "AD_PRES",
    "salary": 24000,
    "manager_id": null,
    "department_id": 90
    }
    """
    # Checking by defining as a Variable:
      * def emp_name = employee.first_name
      * match emp_name == 'Steven'
     * def phone = employee.phone_number
     * match phone == '515.123.4567'
    # Directly from JSON file:
      * match employee.employee_id == 100
      * match employee.job_id == "AD_PRES"
      * match employee.active == 'true'




    Scenario: Fuzzy Matching
     # When we don’t care about the value but the structure, we use ‘fuzzy matching’:

      * def employee =
"""
    {
    "employee_id": 100,
    "first_name": "Steven",
    "last_name": "King",
    "phone_number": "515.123.4567",
    "active": true,
    "job_id": "AD_PRES",
    "salary": 24000,
    "manager_id": null,
    "department_id": 90
    }
    """

    * match employee.employee_id == '#number'
    * match employee.first_name == '#string'
    * match employee.active == '#boolean'
    * match employee.marital_status =='#notpresent'




    Scenario: Contains Matching

      * def employees =
      """
      [
        {
            "employee_id": 100,
            "first_name": "Steven",
            "last_name": "King",
            "manager_id": null,
            "department_id": 90
        },
        {
            "employee_id": 101,
            "first_name": "Neena",
            "last_name": "Kochhar",
            "manager_id": 100,
            "department_id": 90
                }
            ]
      """

      * def length = employees.length
      * print length
      * match length == 2
    # This array has 2 elements. length = 2
    # Validation Json to Json:
    * match employees contains {"employee_id": 100,"first_name": "Steven","last_name": "King","manager_id": null,"department_id": 90}

  Scenario: Checking assertion functions
    * def array =
    """
    [
    {
    'a':123,
    'b':'Twillight',
    'c':'3'
    },
    {
    'x':'Senec',
    'y':true,
    'z':4
    }
    ]
    """
    #length
    * def length = array.length
    * print length
    * match length == 2
    # validation one object from array
    * def company = array[1].x
    * match company == 'Senec'
    # Fuzzy
    * def ID = array[0].a
    * match ID == 123
    * match ID == '#number'
    # OR directly from Json:
  * match array[1].x == 'Senec'
  * match array[0].b == 'Twillight'
  * match array[0].a != 2
  * match array[0].a == '#number'
  * match array[1].y == '#boolean'
  * match array[2].g == '#notpresent'

  * match array contains {'a':123,'b':'Twillight','c':'3'}

