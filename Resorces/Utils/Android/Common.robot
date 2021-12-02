*** Settings ***
Documentation  Siply Mobile App testing
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\AndroidLocators.robot


*** Keywords ***
User Clicks On Start Saving Button
    Click Element At Coordinates  600  1700

Verify Register Page Is Opened
    Wait Until Element Is Visible  ${register}

Click On Text Field To Enter Valid Number
    Click Element  ${enterNumber}
    Input Text  ${enterNumber}  ${number}
    Sleep  5s

User Clicks On Continue Button To Register His Number
    Click Element  ${continue}

Verify OTP Page Opened Or Not
    Wait Until Page Contains Element  ${OTPSent}

User Enters Recieved OTP
    Click Element At Coordinates    160    1160
    Sleep  5s
    Click Element At Coordinates    138    1198
    Sleep    5s
    Click Element At Coordinates    138    1198
    Sleep    5s
    Click Element At Coordinates    138    1198
    Sleep    5s
    Click Element At Coordinates    138    1198
    Sleep    5s
    #Click Element  ${enterOTPHere}
    #Sleep  2s
    #Input Text  ${enterOTPHere}  1234
    #Sleep  2s

Swipe Down In Terms And Condition Page
    Swipe By Percent    42    85    42    10
    Sleep  1s

User Clicks On Terms And Conditions
    Click Element  ${termsAndConditions}
    Sleep  1s
    Repeat Keyword  12 times  Swipe Down In Terms And Condition Page
    Click Element  ${termsAndConditionsOkay}

User Clicks On Resend OTP To Get OTP Once Again
    Wait Until Element Is Visible  ${ResendOTP}
    Click Element  ${ResendOTP}

User Clicks On Verify OTP Button To Verify Entered OTP
    Click Element  ${verifyOTP}
    Sleep  5s
