*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}  https://www.amazon.com.br/

${Livros}   //a[@href='/Livros/b/?ie=UTF8&node=6740748011&ref_=nav_cs_books'][contains(.,'Livros')]

${HEADER_Livros}    //h1[contains(.,'Loja de Livros')]   

${TEXTODE_Livros}   Loja de Livros 



*** Keywords ***
Abrir o navegador
    Open Browser   browser=chrome
    Maximize Browser Window

Fechar o navegador
    #Close Browser


Acessar a home page do site Amazon.com.br
        Go To   url=${URL}  
        Wait Until Element Is Visible   locator=${Livros}  

Entrar no menu "Livros"
    Click Element    ${Livros}        

Verificar se aparece a frase "Loja de Livros"
    Wait Until Page Contains       text=${TEXTODE_Livros}
    Wait Until Element Is Visible  locator=${HEADER_Livros} 
    



     