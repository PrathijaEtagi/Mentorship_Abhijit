*** Settings ***
Documentation  Siply Mobile App testing
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\AndroidLocators.robot


*** Keywords ***
Open Siply Application On Real Device  
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform version}  deviceName=${device}  automationName=${appium}  appActivity=${app activity}  appPackage=${app package}
    Sleep    10s

Check Siply Application Is Opened
    Wait Until Element Is Visible    ${siplyLogo}

Close Siply Application
    Quit Application