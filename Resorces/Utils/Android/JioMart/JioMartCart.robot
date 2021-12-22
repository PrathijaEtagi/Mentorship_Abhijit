*** Settings ***
Documentation  JioMart Mobile App Testing
Library  AppiumLibrary
Resource  ../../../../App Locators/Android/JioMart/JioMartLocators.robot


*** Keywords ***
User Selects JioPhone
    [Documentation]  User Selects Jiophone
    Click Element  ${mobile&tablets}
    Sleep  5s
    Click Element  ${smartPhones}
    Sleep  5s
    Click Element  ${viewAll}
    Sleep  5s
    Click Element  ${jioPhone}
    Sleep  5s

User Adds His Pincode
    # WEBVIEW
    [Documentation]  User Enters His Pincode
    Swipe By Percent    4    78    4    18
    Sleep  2s
    Swipe By Percent    4    78    4    18
    Sleep  2s
    Click Element  ${editPincode}
    Sleep  5s
    Input Text  ${enterPincode}  ${pincode}
    Sleep  2s
    Click Element  ${okPincode}
    Sleep  5s

User Adds Pincode
    # Native
    [Documentation]  User Enters His Pincode
    Switch To Context  NATIVE_APP
    Sleep  2s
    Swipe By Percent    4    78    4    18
    Sleep  2s
    Swipe By Percent    4    78    4    18
    Sleep  2s
    Click Element  ${NeditPincode}
    Sleep  5s
    Input Text  ${NtextPincode}  ${pincode}
    Sleep  2s
    Click Element  ${NokPincode}
    Sleep  5s
    Switch To Context  ${webviewContext}

User Adds Product To Cart
    [Documentation]  User Clicks On BuyNow
    Click Element  ${buyNow}
