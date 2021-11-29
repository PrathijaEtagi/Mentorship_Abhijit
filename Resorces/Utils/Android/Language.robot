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

Swipe Down In Language Section
    Sleep    5s
    Swipe By Percent    50    79    50    22

User Selects Hindi Language
    User Clicks On Language Option To Select Available Language
    Click Element    ${hindiLanguage}
    User Clicks On Confirm Button Ater Selecting Language

User User Selects Kannada Language
    User Clicks On Language Option To Select Available Language
    Click Element    ${kannadaLanguage}
    User Clicks On Confirm Button Ater Selecting Language

User User Selects Telegu Language
    User Clicks On Language Option To Select Available Language
    Click Element    ${teleguLanguage}
    User Clicks On Confirm Button Ater Selecting Language

User User Selects Tamil Language
    User Clicks On Language Option To Select Available Language
    Click Element    ${tamilLanguage}
    User Clicks On Confirm Button Ater Selecting Language

User User Selects Malayalam Language
    User Clicks On Language Option To Select Available Language
    Click Element    ${malayalamLanguage}
    User Clicks On Confirm Button Ater Selecting Language

User User Selects Marathi Language
    User Clicks On Language Option To Select Available Language
    Swipe Down In Language Section
    Click Element    ${marathiLanguage}
    User Clicks On Confirm Button Ater Selecting Language

User User Selects Gujarati Language
    User Clicks On Language Option To Select Available Language
    Swipe Down In Language Section
    Click Element    ${gujaratiLanguage}
    User Clicks On Confirm Button Ater Selecting Language

User User Selects Bengali Language
    User Clicks On Language Option To Select Available Language
    Swipe Down In Language Section
    Click Element    ${bengaliLanguage}
    User Clicks On Confirm Button Ater Selecting Language

User User Selects Punjabi Language
    User Clicks On Language Option To Select Available Language
    Swipe Down In Language Section
    Click Element    ${punjabiLanguage}
    User Clicks On Confirm Button Ater Selecting Language

User User Selects Odia Language
    User Clicks On Language Option To Select Available Language
    Swipe Down In Language Section
    Click Element    ${odiaLanguage}
    User Clicks On Confirm Button Ater Selecting Language
