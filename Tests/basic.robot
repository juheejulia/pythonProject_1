*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/varukorg.robot
Test Setup  Start Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Verify That User Can Reach Mediamarkt
    Go To Mediamarkt
    Click Varukorg
    End Web Test
