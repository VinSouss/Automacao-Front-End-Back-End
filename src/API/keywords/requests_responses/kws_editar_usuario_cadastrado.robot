*** Settings ***
Resource    ../../../../src/config/main.resource

Library    Collections

*** Keywords ***
realizo uma edição PUT para a rota "//serverest.dev/usuarios/_id"
    Body da API - POST
    envio os dados 

    ${body_PUT}    Create Dictionary        
    ...        nome=Fulano da Silva 2
    ...        email=${Email_TEST}
    ...        password=teste2222
    ...        administrador=true


    ${PUT_RESPONSE}    PUT On Session
    ...    alias=ServeRest
    ...    url=/usuarios/${_idUSUARIO}
    ...    json=${body_PUT}
    ...    expected_status=200
    
    Set Global Variable    ${RESP_Edicao}    ${PUT_RESPONSE.json()}


a resposta deve conter uma mensagem "Registro alterado com sucesso"
    Log    ${RESP_Edicao}
    Dictionary Should Contain Item    ${RESP_Edicao}    message     Registro alterado com sucesso
    Delete All Sessions
    