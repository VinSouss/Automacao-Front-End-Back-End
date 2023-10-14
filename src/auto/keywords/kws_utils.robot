*** Settings ***
Documentation        Keyword de utilidade do projeto
Resource             ../../../src/config/main.resource

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

    Log    ${EMAIL_TEST}, ${FirstName_TEST},${LastName_TEST}, ${Company_TEST}

Generate Random Day
    ${days} =  Evaluate  random.randint(1, 31)
    [Return]    ${days}
Generate Random Year
    ${year} =  Evaluate    random.randint(1931, 2023)
    [Return]    ${year}  

Generate Random Month
   ${month} =  Evaluate    random.randint(1, 10)
   [Return]    ${month} 

#Config tela
    #Wait Until is Visible                TelaInformesInicio.png                timeout=${TIMEOUT.ULTRA}
    # ${TUTORIAL}     Run Keyword And Return Status    Screen Should Contain         telaPassoApasso.png            
    # IF    ${TUTORIAL} == $True
    #         Wait Until Screen Contain                telaPassoApasso.png        timeout=${TIMEOUT.ULTRA}
    #         Click In                 telaPassoApasso.png                  iconeFecharTela.png
    # END