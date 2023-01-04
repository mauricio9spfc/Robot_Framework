** Settings **
Library   SeleniumLibrary

** Variables **
${input_name}          id:name
${input_phone}         id:phone
${input_email}         id:email
${input_password}      id:password         
${textarea_address}    id:address
${button_submit}       name:submit


** Keywords **
abrir navegador e acessar o site    
    Open Browser   https://itera-qa.azurewebsites.net/home/automation  chrome

preencher campos
    Input Text      ${input_name}              Maurício Barbosa
    Input Text      ${input_phone}             11987654321
    Input Text      ${input_email}             mauricio@email.com
    Input Text      ${input_password}          123456
    Input Text      ${textarea_address}        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus est turpis, cursus consequat fringilla a, gravida et tortor. 
    
clicar em submit
    Click Element    ${button_submit}

fechar navegador   
    Close Browser

** Test Cases **
Cenario 1: Preencher formulário
        abrir navegador e acessar o site
        preencher campos
        clicar em submit
        fechar navegador