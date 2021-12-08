*** Settings ***
Documentation  JioMart Mobile App testing
Library  AppiumLibrary
Resource  JioMartResource.robot
# robot Test\Android\JioMartTest.robot
Suite Setup  Open JioMart Application On Real Device
Suite Teardown  Close JioMart Apllication

*** Test Cases ***
User Allows All The Permission Required
    User Allows Picture And Audio Record

User Verifies JioMart Application Opened Or Not
    User Checks JioMart Application Is Opened Or Not

User Login Account Through Valid Credentials
    Switch To Context    WEBVIEW_com.fynd.jiomart.debug
    Click Element    xpath=//input[@type="text"]
    Input Text   xpath=//input[@type="text"]   ${number}
    Press Keycode    4
    Click Element    xpath=//input[@type="password"]
    Input Text   xpath=//input[@type="password"]   ${passwordCredential}
    Sleep   2s
    Click Element    xpath=//input[@type="submit"]
    Sleep    10s
    Click Element At Coordinates    550    1150
    Sleep  5s
#    User Enters UserName
#    User Enters Password
#    User Clicks On Login Button
#    Sleep  15s

User Logouts The Account
    Click Element    xpath=//img[@class="mobile-only icon"]
    Click Element    Xpath=//div[text()="Logout"]
    Sleep  5s
