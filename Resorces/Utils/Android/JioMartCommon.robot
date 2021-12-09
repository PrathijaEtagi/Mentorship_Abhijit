*** Settings ***
Documentation  JioMart Mobile App Testing Setup
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\JioMartLocators.robot


*** Keywords ***
User Switch Context To WebView
    Switch To Context  ${webviewContext}

User Enters UserName
    Wait Until Element Is Visible  ${userName}
    Click Element  ${userName}
    Input Text  ${userName}  ${number}
    Press Keycode  4
    Sleep  2s

User Enters Password
    Wait Until Element Is Visible  ${password}
    Click Element  ${password}
    Input Text  ${password}  ${passwordCredential}
    Sleep  5s

User Clicks On Login Button
    Wait Until Element Is Visible  ${login}
    Click Element  ${login}
    Sleep  10s
    Click Element At Coordinates    550    1150

User Clicks On Home Tab
    Click Element    ${home}
    Sleep  5s

User Clicks On Side Menu Options
    Click Element  ${sideMenu}

User Clicks On Logout
    Click Element  ${logout}