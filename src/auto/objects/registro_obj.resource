*** Settings ***
Documentation    Todos os objetos da página de registro

*** Variables ***
&{pg_Registro}
...    title=nopCommerce demo store. Register
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
#...    options 
...    day_option_28=select[name="DateOfBirthDay"] option[value="28"]
...    month_option_10=select[name="DateOfBirthMonth"] option[value="10"]
...    year_option_1999=select[name="DateOfBirthYear"] option[value="1999"]