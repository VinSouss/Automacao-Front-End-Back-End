*** Settings ***
Resource    ../../../../src/config/main.resource

Library    Collections

*** Keywords ***
realizo uma exclusão DELETE para a rota "//serverest.dev/usuarios/_id" 
    Body da API - POST
    envio os dados
    
    ${response_exclusao}    DELETE On Session
    ...    alias=ServeRest
    ...    url=/usuarios/${_idUSUARIO}
    ...    expected_status=200
    
    Set Global Variable    ${RESP_Exclusao}    ${response_exclusao.json()}

a resposta deve conter uma mensagem "Registro excluído com sucesso"
    Log    ${RESP_Exclusao}
    Dictionary Should Contain Item    ${RESP_Exclusao}    message     Registro excluído com sucesso
    Delete All Sessions
    