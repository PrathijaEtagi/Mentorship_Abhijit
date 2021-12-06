*** Settings ***
Documentation  Siply Mobile App testing OTP Setup
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\AndroidMessageLocators.robot
Resource  ..\\..\\..\\App Locators\\AndroidLocators.robot
Library  String


*** Keywords ***
Open Message
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform version}  deviceName=${device}  automationName=${appium}  appActivity=${messageActivity}  appPackage=${messagePackage}
    Sleep  10s

User Copies OTP
    Click Element    xpath=//android.widget.FrameLayout[@content-desc="Copy '5⁣8⁣8⁣4⁣'"]/android.widget.LinearLayout
    Click Element    id=com.google.android.apps.messaging:id/suggestion_button

User Clicks on OTP Message
    Click Element  ${firstMessage}

#User Copiess Otp
#    ${OTPText}  Get Text  ${messageText}

Close Message
    Quit Application