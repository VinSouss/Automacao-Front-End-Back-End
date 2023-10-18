*** Settings ***
Documentation        Keyword de utilidade do projeto
Resource             ../../../src/config/main.resource
                 


*** Keywords ***
Body da API - POST  
    ${body_POST}    Create Dictionary        
    ...        nome=Fulano da Silva Jr
    ...        email=${Email_TEST} 
    ...        password=teste
    ...        administrador=true

    Set Global Variable    ${body_POST}

Body da API - GET
    ${body_GET}    Create Dictionary        
    ...        nome=Fulano da Silva Jr
    ...        email=${Email_TEST} 
    ...        password=teste
    ...        administrador=true
    ...        _id=
   
    Set Global Variable    ${body_GET}

    
