*** Settings ***
Documentation  JioMart Mobile App Testing Setup
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\JioMartLocators.robot


*** Keywords ***
Open JioMart Application On Real Device
    [Documentation]  User Gets Started With JioMart Apllication Launch
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform version}  deviceName=${device}  automationName=${appium}  appActivity=${app activity}  appPackage=${app package}
    Sleep  10s

User Checks JioMart Application Is Opened Or Not
    [Documentation]  User Checks JioMart Application Is Opened Or Not
    Wait Until Element Is Visible    ${jioLogo}

Close JioMart Apllication
    [Documentation]  User Closes JioMart Application
    Quit Application
