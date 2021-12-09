*** Settings ***
Documentation  JioMart Mobile App Testing
Library  AppiumLibrary
Resource  ..\\..\\..\\App Locators\\JioMartLocators.robot


*** Keywords ***
User Selects JioPhone
    Click Element  ${mobile&tablets}
    Sleep  5s
    Click Element  ${smartPhones}
    Sleep  5s
    Click Element  ${viewAll}
    Sleep  5s
    Click Element  ${jioPhone}
    Sleep  5s
#
##WEBVIEW
#User Adds His Pincode
#    Swipe By Percent    4    78    4    18
#    Sleep  2s
#    Swipe By Percent    4    78    4    18
#    Sleep  2s
#    Scroll Down  ${editPincode}
#    Sleep  5s
#    Click Element  ${editPincode}
#    Sleep  5s
#    Input Text  ${enterPincode}  ${pincode}
#    Sleep  2s
#    Click Element  ${okPincode}
#    sleep  5s

User Adds Pincode
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
    sleep  5s

User Adds Product To Cart
    Click Element  ${buyNow}
