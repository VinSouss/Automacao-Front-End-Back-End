*** Settings ***
Documentation    Padrão BDD que será utilizado na automação


*** Keywords ***
Dado
    [Arguments]  @{keyword}
    Run Keyword  @{keyword}

Quando
    [Arguments]  @{keyword}
    Run Keyword  @{keyword}

Então 
    [Arguments]  @{keyword}
    Run Keyword  @{keyword}

E
    [Arguments]  @{keyword}
    Run Keyword  @{keyword}