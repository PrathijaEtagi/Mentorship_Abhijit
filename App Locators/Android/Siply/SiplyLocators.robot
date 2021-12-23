*** Settings ***
Documentation  Siply Mobile App testing Locators
Library  AppiumLibrary


*** Variables ***
# Desired Capabilities
${server}  http://localhost:4723/wd/hub
${app package}  in.siply.ionic
${app activity}  com.capitalquotient.siplyv2.MainActivity
${appium}  appium
${platform}  Android
${platform version}  8.1.0
${device}  ZY32283DJV
# Language Section
${siplyLogo}  xpath=*//android.view.View[2]/android.widget.ImageView[1]
${language}   xpath=*//android.view.View[2]/android.widget.ImageView[2]
${closeLanguage}  xpath=*//android.view.View/android.view.View[1]/android.view.View/android.view.View[2]
${confirmLanguage}  xpath=*//android.view.View/android.view.View[1]/android.view.View/android.view.View[4]
${englishLanguage}  xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[1]
${hindiLanguage}   xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[2]
${kannadaLanguage}  xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[3]
${teleguLanguage}  xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[4]
${tamilLanguage}  xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[5]
${malayalamLanguage}  xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[6]
${marathiLanguage}	xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[1]
${gujaratiLanguage}  xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[2]
${bengaliLanguage}  xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[3]
${punjabiLanguage}  xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[4]
${odiaLanguage}  xpath=*//android.widget.ScrollView/android.view.View/android.view.View/android.view.View[5]

${startSaving}  xpath=//android.view.View[@text="Start Saving"]
${register}  accessibility_id=Register
${enterNumber}  class=android.widget.EditText
${number}  1545789867
${continue}  accessibility_id=Continue
${OTPSent}   accessibility_id=Please enter OTP sent to + 91 ${number}
${enterOTPHere}  xpath=*//android.view.View/android.view.View[5]
${resendOTP}  accessibility_id=Resend OTP
${termsAndConditions}  xpath=*//android.view.View/android.view.View[7]
${termsAndConditionsOkay}  xpath=*//android.widget.ScrollView/android.view.View[2]
${verifyOTP}  accessibility_id=Verify OTP
