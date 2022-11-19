Feature: get user token

  Scenario: get one user token
    # Zuerst schreiben wir die URL als „Given“
    Given url 'https://cybertek-reservation-api-qa3.herokuapp.com/'
    # Dann fügen wir den ‚Endpunkt des Pfades‘ „Zugriff“ hinzu „Sign“
    And path 'sign'
    # Wir fügen unseren ‚Header‘ hinzu.
    And header Accept = 'application/json'
    # Als nächstes kommt unser "query Parameter" (aus der Dokumentation)
    And param email = 'sbirdbj@fc2.com'
    And param password = 'asenorval'
    # Jetzt können wir eine GET-Anfrage senden:
    When method GET
    Then status 200
    # Als Nächstes speichern wir dieses Zugriffstoken in einer Variablen.
    And print response.accessToken
    # Meine 'Token'-Variable behält das accessToken, das von dieser Methode generiert wurde
    And def token = response.accessToken
    And def firstname = 'cemil from BookItAuth.feature'
    # Jetzt erstellen wir eine neue Feature-Datei (BookItTests.feature),
    # um unsere erste Feature-Datei (BookIt.Auth.feature) zu verwenden,
    # die wir erstellt haben, um ein accessToken zu erhalten.