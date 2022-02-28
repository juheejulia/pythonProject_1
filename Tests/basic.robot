*** Settings ***
Library  SeleniumLibrary
Test Setup  Start Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Verify That User Can Reach Mediamarkt
    Go To Mediamarkt
    Click Varukorg
    End Web Test

*** Keywords ***
Start Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

Click Varukorg
    Click Element  //*[@id="rise-header"]/div[1]/div/div[5]/div/a
    Wait Until Page Contains  Kassa - Varukorg
Go To Mediamarkt
    Go To  https://www.mediamarkt.se
    Wait Until Page Contains  Om MediaMarkt

End Web Test
    Close Browser
