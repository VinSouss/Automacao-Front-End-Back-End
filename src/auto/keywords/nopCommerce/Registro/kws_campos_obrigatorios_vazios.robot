*** Settings ***
Documentation    Keywords da tela de registro do nopCommerce

Resource         ../../../../config/main.resource

*** Keywords ***
o sitema deve exibir uma mensagem informando que os campos são obrigatórios.     
    Wait Until Element Is Visible        css=${pg_Registro.span_firstName}            ${TIMEOUT.MINIMAL}
    Wait Until Element Contains          css=${pg_Registro.span_firstName}            text=First name is required.
    Wait Until Element Is Visible        css=${pg_Registro.span_lastName}             ${TIMEOUT.MINIMAL}
    Wait Until Element Contains          css=${pg_Registro.span_lastName}             text=Last name is required.
    Wait Until Element Is Visible        css=${pg_Registro.span_email}                ${TIMEOUT.MINIMAL}
    Wait Until Element Contains          css=${pg_Registro.span_email}                text=Email is required.
    Wait Until Element Is Visible        css=${pg_Registro.span_password}             ${TIMEOUT.MINIMAL}
    Wait Until Element Contains          css=${pg_Registro.span_password}             text=Password is required.
    Wait Until Element Is Visible        css=${pg_Registro.span_confirmPassword}      ${TIMEOUT.MINIMAL}
    Wait Until Element Contains          css=${pg_Registro.span_confirmPassword}      text=Password is required.
