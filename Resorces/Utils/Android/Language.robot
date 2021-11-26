*** Settings ***
Documentation    Siply Mobile App testing
Library          AppiumLibrary
Resource        C:\\Users\\Admin\\Documents\\GitHub\\Mentorship_Abhijit\\App Locators\\AndroidLocators.robot


*** Keywords ***
User Clicks On Language Option To Select Available Language
    Wait Until Element Is Visible    ${language}
    Click Element    ${language}
    Sleep    5s

User Clicks On Language
    Sleep    5s
    #Click Element    ${malayalamLanguage}
    #Click Element    ${tamilLanguage}
    Tap  ${TeleguLanguage}
    Sleep    5s
    Click Element    ${kannadaLanguage}
    Sleep    5s
    Click Element    ${hindiLanguage}
    Sleep    5s
    Click Element    ${EnglishLanguage}
    Sleep    5s

User Clicks On Confirm Button Ater Selecting Language
    Click Element    ${confirmLanguage}
User Clicks On Close In Language Tab
    Click Element    ${closeLanguage}