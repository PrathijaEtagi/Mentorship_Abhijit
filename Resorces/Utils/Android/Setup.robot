*** Settings ***
Documentation  Siply Mobile App Testing Setup
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\AndroidLocators.robot


*** Keywords ***
Open Siply Application On Real Device
    [Documentation]  User Gets Started With Siply Apllication Launch
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform version}  deviceName=${device}  automationName=${appium}  appActivity=${app activity}  appPackage=${app package}
    Sleep  10s

Check Siply Application Is Opened
    [Documentation]  User Checks Siply Application Is Opened Or Not
    Wait Until Element Is Visible  ${siplyLogo}

Close Siply Application
    [Documentation]  User Closes Siply Application
    Quit Application
