*** Settings ***
Documentation    Siply Mobile App testing
Library          AppiumLibrary


*** Variables ***
${server}  http://localhost:4723/wd/hub
${app package}  in.siply.ionic
${app activity}  com.capitalquotient.siplyv2.MainActivity
${appium}  appium
${platform}  Android
${platform version}  8.1.0
${device}  ZY32283DJV
${siplyLogo}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ImageView[1]
${language}   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.ImageView[2]
${closeLanguage}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]
${englishLanguage}  xpath=//android.view.View[@content-desc="Hello English"]
${hindiLanguage}  xpath=//android.view.View[@content-desc="नमस्ते Hindi"]
${kannadaLanguage}  xpath=//android.view.View[@content-desc="ಹಲೋ Kannada"]
${teleguLanguage}  content-desc=హలో Telugu
${tamilLanguage}  xpath=//android.view.View[@content-desc="வணக்கம் Tamil"]
${malayalamLanguage}  xpath=//android.view.View[@content-desc="ഹലോ Malayalam"]
${confirmLanguage}  xpath=//android.view.View[@content-desc="Confirm"]