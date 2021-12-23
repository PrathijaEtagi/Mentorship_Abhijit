*** Settings ***
Documentation  JioMart Mobile App Testing Login And Logout
Library  AppiumLibrary
Resource  ../../../../App Locators/Android/JioMart/JioMartLocators.robot


*** Keywords ***
User Switch Context To WebView
    [Documentation]  User Switch To Webview
    Switch To Context  ${webviewContext}

User Enters UserName
    [Documentation]  User Enters Username
    Wait Until Element Is Visible  ${userName}
    Click Element  ${userName}
    Input Text  ${userName}  ${number}
    Press Keycode  4
    Sleep  2s

User Enters Password
    [Documentation]  User Enters Password
    Wait Until Element Is Visible  ${password}
    Click Element  ${password}
    Input Text  ${password}  ${passwordCredential}
    Sleep  5s

User Clicks On Login Button
    [Documentation]  User Clicks On Login Button
    Wait Until Element Is Visible  ${login}
    Click Element  ${login}
    Sleep  10s
    Click Element At Coordinates    550    1150

User Clicks On Home Tab
    [Documentation]  User Clicks On Home Button
    Click Element    ${home}
    Sleep  5s

User Clicks On Side Menu Options
    [Documentation]  User Clicks On SideMenu Button
    Click Element  ${sideMenu}

User Clicks On Logout
    [Documentation]  User Clicks On Logout Button
    Click Element  ${logout}
