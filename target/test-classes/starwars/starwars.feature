Feature: Executar testes na API do Star Wars.

    Scenario: Verificar se api do star wars está de pé
        Given url 'https://swapi.dev/api/people/1/'
        When method get
        Then status 200

    Scenario: Verficar se pessoa 123 existe
        Given url 'https://swapi.dev/api/people/123/'
        When method get
        Then status 404
        And match response.detail == "Not found"

    Scenario: Verificar está retornando nome correto
        Given url 'https://swapi.dev/api/people/1/'
        When method get
        Then status 200
        And match response.name == "Luke Skywal"
        And match response.gender == "male"
