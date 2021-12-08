*** Settings ***
Documentation  JioMart Mobile App Testing Setup
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\JioMartLocators.robot


*** Keywords ***
User Enters UserName
    Wait Until Element Is Visible  ${userName}
    Click Element  ${userName}
    Input Text  ${userName}  ${number}
    Sleep  5s
    Click Element  ${jioAccount}
    Sleep  2s

User Enters Password
    Wait Until Element Is Visible  ${password}
    Click Element  ${password}
    Input Text  ${password}  ${passwordCredential}
    Sleep  5s

User Clicks On Login Button
     Wait Until Element Is Visible  ${login}
    Click Element  ${login}
