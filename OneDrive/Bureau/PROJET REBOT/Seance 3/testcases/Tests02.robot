**** Settings ****
Library    SeleniumLibrary
*** Variables ***
# variable sclaire c'est une variqble qui contient une seule valeur à la fois
${prmiere Valeur}=    100
${Deuxième Valeur}=    200
${name}=    fethi
${Troisième valeur}=    200.5
${BROWSER}=    chrome
${url}=    https://www.google.com
# Les variables de type liste
@{ville}=    Montréal    laval    langueil
@{list valeur}=    1    2    3    4
# Variable de type ditionnaire : on stock les données sous forme de pair clé : valeur
&{URL-ENV}=    qa=https://www.google.qa.ca    dev=https://www.google.dev.ca


*** Test Cases ***
Tc01 mon premier test
    Log    ${prmiere Valeur}
    Log    ${Deuxième Valeur}
    Log    ${name}
    Log    ${Troisième valeur}
    Log    ${ville}[0] ${ville}[1]
    Log    ${URL-ENV}[qa]
    Log    ${URL-ENV}[dev]
tc02 mon Deuxième test    
    #${QUATRI7ME Variable}=    log    test
    Log    ${name}
