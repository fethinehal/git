*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    googlechrome
*** Test Cases ***
Tc001 login test
    Se connecter à l'application orange demo    ${url}    ${Browser}
    Saisir le username
    Saisir le mot de passe
    Cliquer sur le bouton login
    valider l'affichage de la page d'accueil
    fermer l'application




*** Keywords ***
Se connecter à l'application orange demo
    [Arguments]    ${a}    ${b}
    Open Browser    ${a}    ${b}
    Maximize Browser Window
Saisir le username
    Sleep    3
    Clear Element Text    name:username
    Input Text    name:username    Admin

Saisir le mot de passe
    Clear Element Text    name:password
    Input Password    name:password    admin123

Cliquer sur le bouton login   
    Click Button    xpath://button
    Sleep    3
valider l'affichage de la page d'accueil
    Element Text Should Be    xpath://h6    Dashboard

fermer l'application
    Close Browser