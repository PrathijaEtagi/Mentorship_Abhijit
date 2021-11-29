*** Settings ***
Documentation  Siply Mobile App testing
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\AndroidLocators.robot


*** Keywords ***
User Clicks On Language Option To Select Available Language
    Wait Until Element Is Visible    ${language}
    Click Element    ${language}
    Sleep    5s

User Clicks On Confirm Button Ater Selecting Language
     Wait Until Element Is Visible    ${confirmLanguage}
    Click Element    ${confirmLanguage}

User Clicks On Close In Language Tab
    Wait Until Element Is Visible    ${closeLanguage}
    Click Element    ${closeLanguage}
