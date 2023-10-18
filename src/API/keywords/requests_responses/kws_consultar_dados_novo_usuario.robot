*** Settings ***
Resource    ../../../../src/config/main.resource

*** Keywords ***
realizo uma consulta GET para a rota "//serverest.dev/usuarios/_id"
    Body da API - POST
    envio os dados

    ${GET_RESPONSE}    GET On Session    
    ...    alias=ServeRest    
    ...    url=/usuarios/${_IDUSUARIO}    
    ...    expected_status=200
   
    Set test Variable    ${REPOSTA}    ${GET_RESPONSE.json()}
a resposta deve conter as informações do usuário 
    Log    ${REPOSTA}
    Dictionary Should Contain Item    ${REPOSTA}    nome               Fulano da Silva Jr

    Dictionary Should Contain Item    ${REPOSTA}    email              ${Email_TEST}
    Dictionary Should Contain Item    ${REPOSTA}    password           teste
    Dictionary Should Contain Item    ${REPOSTA}    administrador      true
    Dictionary Should Contain Item    ${REPOSTA}    _id               ${_idUSUARIO}
    Delete All Sessions