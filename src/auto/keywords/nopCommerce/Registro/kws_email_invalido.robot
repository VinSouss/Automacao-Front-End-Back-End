*** Settings ***
Documentation    Keywords da tela de registro do nopCommerce

Resource         ../../../../config/main.resource

*** Keywords ***
preenche os campos com email inválido
    Massa de Testes Aleatórias
    Wait Until Element Is Visible        css=${pg_Registro.checkbox_male}           ${TIMEOUT.MINIMAL}    
    Select Radio Button                  Gender                                     M                                         
    Radio Button Should Be Set To        Gender                                     M
    Wait Until Element Is Visible        css=${pg_Registro.input_firstName}         ${TIMEOUT.MINIMAL}  
    Input Text                           css=${pg_Registro.input_firstName}         ${FirstName_TEST}     
    Wait Until Element Is Visible        css=${pg_Registro.input_lastName}          ${TIMEOUT.MINIMAL}  
    Input Text                           css=${pg_Registro.input_lastName}          ${LastName_TEST}
    Wait Until Element Is Visible        css=${pg_Registro.select_day}              ${TIMEOUT.MINIMAL}  
    ${days} =                            Run Keyword                                Generate Random Day
    Wait Until Element Is Visible        css=${pg_Registro.select_day}              ${TIMEOUT.MINIMAL}  
    Select From List By Value            css=${pg_Registro.select_day}              ${days}
    Wait Until Element Contains          xpath=//select[@name="DateOfBirthDay"]/option[text()="${days}"]         ${days}  
    ${months} =                          Run Keyword                                Generate Random Month
    Select From List By Value            css=${pg_Registro.select_month}            ${months}
    ${option_xpath} =    Set Variable    //select[@name="DateOfBirthMonth"]/option[@value="${months}"]
    ${months} =                          Get Text                                   ${option_xpath}
    [Return]    ${months}
    ${year} =                            Run Keyword                                Generate Random Year
    Select From List By Value            css=${pg_Registro.select_year}             ${year}
    Wait Until Element Contains          xpath=//select[@name="DateOfBirthYear"]/option[text()="${year}"]         ${year}
    Wait Until Element Is Visible        css=${pg_Registro.input_email}             ${TIMEOUT.MINIMAL}  
    Input Text                           css=${pg_Registro.input_email}             teste@teste
    Wait Until Element Is Visible        css=${pg_Registro.input_nameCompany}       ${TIMEOUT.MINIMAL}        
    Input Text                           css=${pg_Registro.input_nameCompany}       ${Company_TEST}
    Scroll Element Into View             css=${pg_Registro.btn_register}  
    Select Checkbox                      css=${pg_Registro.input_newsletter} 
    Checkbox Should Be Selected          css=${pg_Registro.input_newsletter}          
    Input Password                       css=${pg_Registro.input_password}          apresentacao
    Input Password                       css=${pg_Registro.input_confirmPassword}   apresentacao

o sitema deve exibir uma mensagem informando que o e-mail é inválido.
    Wait Until Element Is Visible        css=${pg_Registro.alert_errorEmail}         ${TIMEOUT.MINIMAL}
    Wait Until Element Contains          css=${pg_Registro.alert_errorEmail}         text=Wrong email