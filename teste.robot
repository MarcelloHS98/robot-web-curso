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

Acessar esse site
    [Arguments]     ${URL}
    Open Browser    ${URL}   chrome

Aguardar site carregar
    Sleep   5s

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


** Test Cases **
cenário 1: Acessando o site da QAZANDO
    [Tags]  Teste1 
    Acessar site da QAZANDO
    Aguardar site carregar
    Clicar sobre o botão login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado

cenário 2: Testando Robot
    [Tags]  Teste2
    Abrir Site Herbert
    Aguardar site carregar
    Clicar sobre o botão login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado

cenário 3: Testando valor no teste
    [Tags]  Teste3 
    Acessar esse site   https://automationpratice.com.br/
    Aguardar site carregar
    Clicar sobre o botão login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado