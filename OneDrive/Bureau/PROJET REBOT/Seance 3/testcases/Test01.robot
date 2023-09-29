*** Settings ***
Resource    ../resources/ressource01.robot
Documentation    cette suite de tests est créée par fethi
Suite Setup    Log    j'execute une fois avant le test
Suite Teardown    Log    j'exécute une seule fois après le test
Test Setup    Se connecter à l'application orange demo
Test Teardown    fermer l'application

*** Test Cases ***
Tc001 login test
    
    When Saisir le username
    And Saisir le mot de passe
    And Cliquer sur le bouton login
    Then valider l'affichage de la page d'accueil
    

