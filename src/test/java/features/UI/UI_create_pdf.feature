Feature: Create pdf file
# to create paginated(sayfalandirilmis) pdf document from the page loaded:
# * def pdfDoc = pdf({'orientation': 'landscape'})
# * karate.write(pdfDoc, "pdfDoc.pdf")

# Sometimes it doesn't work if the page is too big.

  Scenario: Creating pdf file testing

  Given driver 'https://www.lipsum.com/'
    * delay(5000)
    * def pdfDoc1 = pdf({'orientation': 'landscape'})
    * delay(5000)
    * karate.write(pdfDoc1, "pdfDocument.pdf")

#--------------------------------------------------------------

  Scenario: Creating pdf file testing2

   Given driver 'http://practice.cybertekschool.com/'
   * delay(5000)
   * def pdfDoc2 = pdf({'orientation': 'landscape'})
   * delay(5000)
   * karate.write(pdfDoc2, "pdfDocument2.pdf")