*** Settings ***
Documentation    Keywords da tela de registro do nopCommerce
Resource    ../../../config/main.resource

*** Keywords ***
#Cenário 1: [Registro] Registro com sucesso.
o usuario esteja na tela de registro
    Ir para tela de registro  
    Title Should Be                      ${pg_Registro.title}
    #Scroll Element Into View         css=${pg_Registro.btn_register}
    #Sleep    2  
    #Wait Until Element Is Visible    css=${pg_Registro.btn_register}    ${TIMEOUT.MINIMAL}    

preenche os campos obrigatórios
    Wait Until Element Is Visible        css=${pg_Registro.checkbox_male}    
    Select Radio Button                  Gender                                      M                                         
    Radio Button Should Be Set To        Gender                                      M
    Wait Until Element Is Visible        css=${pg_Registro.input_firstName}  
    Input Text                           css=${pg_Registro.input_firstName}          Orange        
    Wait Until Element Is Visible        css=${pg_Registro.input_lastName}  
    Input Text                           css=${pg_Registro.input_firstName}          Teste
    Wait Until Element Is Visible        css=${pg_Registro.select_day}  
    Select From List By Value            css=${pg_Registro.select_day}               28
    Wait Until Element Contains          css=${pg_Registro.day_option_28}            28
    Select From List By Value            css=${pg_Registro.select_month}             10
    Wait Until Element Contains          css=${pg_Registro.month_option_10}          October
    Select From List By Value            css=${pg_Registro.select_year}              1999
    Wait Until Element Contains          css=${pg_Registro.year_option_1999}         1999
    Wait Until Element Is Visible        css=${pg_Registro.input_email}  
    Input Text                           css=${pg_Registro.input_email}              orangehrmprojeto@gmail.com
    Wait Until Element Is Visible        css=${pg_Registro.input_nameCompany}        
    Input Text                           css=${pg_Registro.input_nameCompany}        Orange Company
    Scroll Element Into View             css=${pg_Registro.btn_register}  
    Select Checkbox                      css=${pg_Registro.input_newsletter} 
    Checkbox Should Be Selected          css=${pg_Registro.input_newsletter} 
    Input Password                       css=${pg_Registro.input_password}           Oranget3st3
    Input Password                       css=${pg_Registro.input_confirmPassword}    Oranget3st3