*** Settings ***
Documentation  Siply Mobile App testing
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\AndroidLocators.robot

*** Keywords ***
User Clicks On Start Saving Button
    Click Element At Coordinates    600    1700

Verify Register Page Is Opened
    Wait Until Element Is Visible  accessibility_id=Register

Click On Text Field To Enter Valid Number
    Click Element    class=android.widget.EditText
    Input Text    class=android.widget.EditText   1234567891