** Settings **
Library  SeleniumLibrary

** Variables **


** Keywords **
Abrir Site da google
    Open Browser  https://google.com/  chrome
    Close Browser

fechar navegador    
    Close Browser

Abrir Site da globo
    Open Browser  https://globo.com/  chrome
    Close Browser


** Test Cases **
Cenário 1: Acessando o site da google com Robot
    Abrir Site da google
    fechar navegador

Cenário 2: Acessando o site da globo com Robot
    Abrir Site da globo
    fechar navegador    