Feature: Review the basics

  Scenario: How to print
  # keyword print + "string" or 'string'
    Given print "Hello Everyone!"
    Given print 'I am very happy to be here with all of you'
    When print 'another print'
    Then print "then print"
  # * represents Given-When-Then
  # , --> concatenate 2 strings + 'space'
  * def son = 'Mikail'
  * def sonAge = 13

   * print "My name is" , "Cemil"
   * print "My son's name is", son ,"and he is",sonAge,"years old."
   * print "I am" , '49', "years old,"
   * print "and we live in" , "Köln."
   * print 2+2


  Scenario:  Variables
    * def name = 'Mike'
    * def age = 35
    * def address = 'London - Manchester'
    * print "My name is " , name  +  '.' , "I am2", age , "years old."
    * print "And I live in", address +'.'


  Scenario:  JSON object
     # json structure -> we can define and save in Karate directly
   * def student = {'name': 'Sam','owes_tuition':'false'}
   * print student
       # actual useful part is:
   * print student.name
   * print student.owes_tuition



  Scenario: JSON object 2
     # “”” ‘3 double-quotes’ It will open a space for us to write structural way of JSON.
    * def employee =
"""
{
"id": 131517191
"department_id": 11,
"job_id": "ADD_PRESIDENT",
"first_name": "Steven",
"last_name": "King",
"salary": 24000
}
"""
    * print "ID:" , employee.id
    * print "Department ID:" , employee.department_id
    * print "Job ID:" , employee.job_id
    * print employee.first_name
    * print employee.last_name
    * print "Salary:", employee.salary



    Scenario: json array objects

    * def team =
      """
      [
        {
      'name': 'Daniel',
      'büro':'6er Büro',
      'platz': 5
      },
      {
      'name': 'Marcel',
      'büro':'3er Büro',
      'platz': 1
      },
      {
      'name': 'Alexandra',
      'büro':'Verwaltung',
      'platz': 2
         }
      ]
      """
    * print team
    * print team[0]
    * print team[1].büro
    * print team[2].name
    * print team[0].platz
