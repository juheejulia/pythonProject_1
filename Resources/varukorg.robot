*** Keywords ***
Start Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

Click Varukorg
    Click Element  //*[@id="rise-header"]/div[1]/div/div[5]/div/a
    Wait Until Page Contains  Kassa - Varukorg

Veir Empty Basket
    Wait Until Page Contains  Det finns inga produkter i din varukorg
Go To Mediamarkt
    Go To  https://www.mediamarkt.se
    Wait Until Page Contains  Om MediaMarkt

End Web Test
    Close Browser