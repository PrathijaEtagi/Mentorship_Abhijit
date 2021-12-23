*** Settings ***
Documentation  JioMart Mobile App Testing Allowing Permission
Library  AppiumLibrary
Resource  ../../../../App Locators/Android/JioMart/JioMartLocators.robot


*** Keywords ***
User Allows Picture And Audio Record
    [Documentation]  User Allows All The Permission
    Click Element  ${allow}
    Sleep  2s
    Click Element  ${allow}
    Sleep  20s
