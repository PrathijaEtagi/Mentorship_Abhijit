*** Settings ***
Documentation    Siply Mobile App testing
Library          AppiumLibrary
Resource       C:\\Users\\Admin\\Documents\\GitHub\\Mentorship_Abhijit\\App Locators\\AndroidLocators.robot
*** Keywords ***
Open Siply App On Real Device  
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform version}  deviceName=${device}  automationName=${appium}  appActivity=${app activity}  appPackage=${app package}
    Sleep    10s
Check Siply Application Is opened
    Wait Until Element Is Visible    ${siplyLogo}
Close Siply Application
    Quit Application