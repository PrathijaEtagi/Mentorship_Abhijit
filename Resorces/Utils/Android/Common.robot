*** Settings ***
Documentation  Siply Mobile App testing
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\AndroidLocators.robot

*** Keywords ***
User Clicks On Start Saving Button
    Click Element At Coordinates    600    1700

Verify Register Page Is Opened
    Wait Until Element Is Visible  ${register}

Click On Text Field To Enter Valid Number
    Click Element  ${enterNumber}
    Input Text  ${enterNumber}  1234567891
    Sleep  5s