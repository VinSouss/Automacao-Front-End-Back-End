*** Settings ***
Documentation    Todos os objetos da página de registro.
*** Variables ***
&{pg_Registro}
...    title=nopCommerce demo store. Register
...    subtitle=//div[@class='title']/strong[text()="Your Personal Details"]
...    checkbox_male=[id="gender-male"]
...    checkbox_female=[id="gender-female"]
...    input_firstName=input[type="text"][id="FirstName"]
...    input_lastName=input[type="text"][id="LastName"]
...    select_day=select[name="DateOfBirthDay"]
...    select_month=select[name="DateOfBirthMonth"]
...    select_year=select[name="DateOfBirthYear"]
...    input_email=input[id="Email"]
...    input_nameCompany=input[id="Company"]
...    input_newsletter=input[type="checkbox"][id="Newsletter"]
...    input_password=input[type="password"][id="Password"]
...    input_confirmPassword=input[type="password"][id="ConfirmPassword"]
...    btn_register=button[type="submit"][id="register-button"]
...    message_sucess=div[class="result"]
...    span_firstName=span[id="FirstName-error"]
...    span_lastName=span[id="LastName-error"]
...    span_email=span[id="Email-error"]
...    span_password=span[id="Password-error"]
...    span_confirmPassword=span[id="ConfirmPassword-error"]
...    alert_errorEmail=div[class="message-error validation-summary-errors"]
...    alert_validacaoConfirmPassword=span[class="field-validation-error"]
...    Masculino=M
...    Feminino=F     
...    fistName=Teste
...    lasName=Jr
...    email=TesteJr@emailteste.com
...    company=Company Teste
...    passoword=test3*
...    confirmPassword=test3*