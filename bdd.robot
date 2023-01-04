*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#Dados do teste
${NomeDaMusica}  Iron Maiden Hallowed be thy name

#Variaveis de configurações
${URL}   https://www.youtube.com/
${Browser}   chrome

#Elementos
${Input_Pesquisa}   //input[@id="search"]
${Button_Pesquisa}  //button[@id="search-icon-legacy"]
${PrimeiroVIdeo}    (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}            (//div[@id="segmented-like-button"])[1]

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser  ${URL}   ${Browser}
Quando digito o nome da música
    Input Text    ${Input_Pesquisa}    ${NomeDaMusica}

E clico no botão buscar
    Click Element    ${Button_Pesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible   ${PrimeiroVIdeo}  10s
    Click Element    ${PrimeiroVIdeo}

Então o video é executado
    Wait Until Element Is Visible    ${Prova}  10s
    Element Should Be Visible   ${Prova} 
    Sleep    5s
    Close Browser



*** Test Cases ***
Cenario 1: Executar primeira musica do iron maiden pesquisada
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o video é executado
    