*** Settings ***
Resource    ../../../../src/config/main.resource


*** Keywords ***
uma API de cadastro de usuários
    Massa de Testes Aleatórias
    Criar Sessão na ServerRest
realizo uma solicitação POST para a rota "//serverest.dev/usuarios"
    Body da API - POST
envio os dados     
  ${POST_RESPONSE}    POST On Session
    ...    alias=ServeRest       
    ...    url=/usuarios
    ...    json=${body_POST}
    ...    expected_status=201
     
   Log    ${POST_RESPONSE.json()} 
   
   Set Global Variable    ${POST_RESPONSE}

   IF    ${POST_RESPONSE.status_code} == 201
       Set Test Variable    ${_IDUSUARIO}    ${POST_RESPONSE.json()["_id"]}    
    END

    Set Test Variable    ${RESPOSTA}    ${POST_RESPONSE.json()}
    
a resposta deve conter uma messagem "Cadastro Realizado com sucesso"
    Log    ${RESPOSTA}
    Dictionary Should Contain Item    ${RESPOSTA}    message    Cadastro realizado com sucesso
    Dictionary Should Contain Key    ${RESPOSTA}    _id
    Deletar todas as sessões



    