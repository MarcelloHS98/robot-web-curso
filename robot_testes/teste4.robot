** Settings **
Library    SeleniumLibrary

** Variables **
${SITE_URL}             https://automationpratice.com.br/
${SITE_URL_HERBERT}     https://www.google.com.br/
${USUARIO_EMAIL}        teste@teste.com 
${USUARIO_SENHA}        123456

** Keywords **
Abrir Site Herbert
    Open Browser    ${SITE_URL_HERBERT}  chrome  

Acessar site da QAZANDO
    Open Browser    ${SITE_URL}   chrome
    Esperar Elemento    2

Acessar esse site
    [Arguments]     ${URL}
    Open Browser    ${URL}   chrome

Aguardar site carregar
    Sleep   3s

Clicar sobre o botão login
    Click Element   xpath://a[@href='/login']

Digitar email
    Input Text  id:user  ${USUARIO_EMAIL}   

Digitar senha
    Input Text  id:password  ${USUARIO_SENHA} 


Clicar em logar
    Click Element   id:btnLogin

Verificar texto login realizado
    ${texto_atual}      Get Text    id:swal2-title
    Should Be Equal As Strings  ${texto_atual}  Login realizado

Tirar Print
    Capture Page Screenshot

Esperar Elemento
    [Arguments]     ${tempo}
    Set Selenium Implicit Wait      ${tempo}s

** Test Cases **
cenário 1: Acessando o site da QAZANDO
    [Tags]  Teste1 
    Acessar site da QAZANDO    
    Clicar sobre o botão login     
    Digitar email
    Digitar senha    
    Clicar em logar   
    Verificar texto login realizado
    

