*** Settings ***
Documentation        Keyword de utilidade do projeto
Resource             ../../../src/config/main.resource

*** Variables ***
@{months}    Janeiro    Fevereiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro

*** Keywords ***
que o usuário esteja na tela de Home do nopCommerce
    Title Should Be                   ${pg_home.title}
    Wait Until Element Is Visible     css=${pg_Home.btn_register}        ${TIMEOUT.MINIMAL}
    Click Element                     css=${pg_Home.btn_register}  

Massa de Testes Aleatórias    
    ${FIRSTNAME_RANDOM}                Generate Random String            length=7            chars=[LETTERS]
    Set Global Variable                ${FirstName_TEST}                 ${FIRSTNAME_RANDOM} 
   
    ${LASTNAME_RANDOM}                 Generate Random String            length=4            chars=[LETTERS]
    Set Global Variable                ${LastName_TEST}                  ${LASTNAME_RANDOM}
        
    Set Global Variable                ${Email_TEST}                     ${FirstName_TEST}${LastName_TEST}@emailtest.com
    
    ${COMPANY_RANDOM}                  Generate Random String            length=7            chars=[LETTERS]
    Set Global Variable                ${Company_TEST}                   ${COMPANY_RANDOM}

Generate Random Day
    ${days} =      Evaluate      random.randint(1, 31)
    [Return]    ${days}
Generate Random Month
    ${months} =      Evaluate      random.randint(1, 12)
    [Return]    ${months}

Generate Random Year   
    ${year} =      Evaluate      random.randint(1931, 2023)
    [Return]    ${year} 

Deletar todas as sessões
    Delete All Sessions


Cadastro expirado               
    ${CADASTRO_EXPIRADO}    Run Keyword And Return Status      Page Should Contain                        ${pg_Login.message_error}
    IF    ${CADASTRO_EXPIRADO} == $True               
             Wait Until Element Is Visible                     css=${pg_Login.btn_register}               ${TIMEOUT.MINIMAL}    
             Click Button                                      css=${pg_Login.btn_register}               
             Wait Until Element Is Visible                     css=${pg_Registro.checkbox_male}           ${TIMEOUT.MINIMAL}    
             Select Radio Button                               Gender                                     M                                         
             Radio Button Should Be Set To                     Gender                                     ${pg_Registro.Masculino}
             Wait Until Element Is Visible                     css=${pg_Registro.input_firstName}         ${TIMEOUT.MINIMAL}  
             Input Text                                        css=${pg_Registro.input_firstName}         ${CREDENCIAIS_PADROES.firstName}    
             Wait Until Element Is Visible                     css=${pg_Registro.input_lastName}          ${TIMEOUT.MINIMAL}  
             Input Text                                        css=${pg_Registro.input_lastName}          ${CREDENCIAIS_PADROES.lastName}    
             Wait Until Element Is Visible                     css=${pg_Registro.select_day}              ${TIMEOUT.MINIMAL}  
             Select From List By Value                         css=${pg_Registro.select_day}              ${CREDENCIAIS_PADROES.day}    
             Wait Until Element Contains                       css=${CREDENCIAIS_PADROES.option_day}      ${CREDENCIAIS_PADROES.day}
             Select From List By Value                         css=${pg_Registro.select_month}            ${CREDENCIAIS_PADROES.month}
             Element Attribute Value Should Be                 css=${CREDENCIAIS_PADROES.option_month}    value=${CREDENCIAIS_PADROES.option_month}       ${None}     
             Select From List By Value                         css=${pg_Registro.select_year}             ${CREDENCIAIS_PADROES.year}
             Wait Until Element Contains                       css=${CREDENCIAIS_PADROES.option_year}     ${CREDENCIAIS_PADROES.year}
             Wait Until Element Is Visible                     css=${pg_Registro.input_email}             ${TIMEOUT.MINIMAL}  
             Input Text                                        css=${pg_Registro.input_email}             ${CREDENCIAIS_PADROES.email}
             Wait Until Element Is Visible                     css=${pg_Registro.input_nameCompany}       ${TIMEOUT.MINIMAL}        
             Input Text                                        css=${pg_Registro.input_nameCompany}       ${CREDENCIAIS_PADROES.company}
             Scroll Element Into View                          css=${pg_Registro.btn_register}  
             Select Checkbox                                   css=${pg_Registro.input_newsletter} 
             Checkbox Should Be Selected                       css=${pg_Registro.input_newsletter}          
             Input Password                                    css=${pg_Registro.input_password}          ${CREDENCIAIS_PADROES.password}
             Input Password                                    css=${pg_Registro.input_confirmPassword}   ${CREDENCIAIS_PADROES.confirmPassword}
             clica no botão de registro
             o sitema deve exibir uma mensagem que o registro foi realizado sucesso. 
             Wait Until Element Is Visible                     css=${pg_Home.btn_login}                   ${TIMEOUT.MINIMAL}                                
             Click Element                                     css=${pg_Home.btn_login}
             preenche os campos
             clica no botão de login
    END

Usuário Logado
    que o usuario esteja na tela de login
    preenche os campos 
    clica no botão de login
    o usuario deve realizar login no sistema   

Pesquisa Produto 
    que estou na home page do nopCommerce
    pesquisar pelo produto "Desktop"
    o sistema deve redirecionar o usuário a página pesquisada
    os produtos da linha Desktop deve ser mostrado

Adicionar Endereço
    Title Should Be    ${pg_Checkout.title}
    ${ADICIONAR_USUARIO}    Run Keyword And Return Status        Wait Until Element Is Visible                  css=${pg_Checkout.select_country}
    IF    ${ADICIONAR_USUARIO} == $True     
        Wait Until Element Is Visible                            css=${pg_Checkout.select_country}               ${TIMEOUT.MINIMAL}
        Select From List By Value                                css=${pg_Checkout.select_country}               ${pg_Checkout.value}
        Element Attribute Value Should Be                        css=${pg_Checkout.select_country}               value=168    ${None}
        Wait Until Element Is Visible                            css=${pg_Checkout.input_city}                   ${TIMEOUT.MINIMAL}
        Input Text                                               css=${pg_Checkout.input_city}                   ${pg_Checkout.city}
        Wait Until Element Is Visible                            css=${pg_Checkout.input_city}                   ${TIMEOUT.MINIMAL}
        Input Text                                               css=${pg_Checkout.input_address1}               ${pg_Checkout.adress1}
        Wait Until Element Is Visible                            css=${pg_Checkout.input_zip}                    ${TIMEOUT.MINIMAL}
        Input Text                                               css=${pg_Checkout.input_zip}                    ${pg_Checkout.zip}
        Wait Until Element Is Visible                            css=${pg_Checkout.input_phone}                  ${TIMEOUT.MINIMAL}
        Input Text                                               css=${pg_Checkout.input_phone}                  ${pg_Checkout.phone}
        Wait Until Element Is Visible                            css=${pg_Checkout.btn_continue}                 ${TIMEOUT.MINIMAL}
        Click Button                                             css=${pg_Checkout.btn_continue} 
        Wait Until Element Is Visible                            css=${pg_Checkout.btn_addres_continue}          ${TIMEOUT.MINIMAL}
        Click Button                                             css=${pg_Checkout.btn_addres_continue} 
        
    ELSE    
        Wait Until Element Is Visible                            css=${pg_Checkout.btn_addres_continue}          ${TIMEOUT.MINIMAL}
        Click Button                                             css=${pg_Checkout.btn_addres_continue}          
    END      
    