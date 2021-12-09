*** Settings ***
Documentation  JioMart Mobile App Testing Setup
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\JioMartLocators.robot



*** Keywords ***
User Allows Picture And Audio Record
    Click Element  ${allow}
    Sleep  2s
    Click Element  ${allow}
    Sleep  20s
