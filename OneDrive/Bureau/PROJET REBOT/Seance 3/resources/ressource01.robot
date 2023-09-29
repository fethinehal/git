*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    googlechrome
*** Keywords ***
Se connecter à l'application orange demo
    [Documentation]    ce keyword est crée par fethi
    ...    pour ouvrir des applications web dans un navigateur
    Open Browser    ${url}    ${browser}
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