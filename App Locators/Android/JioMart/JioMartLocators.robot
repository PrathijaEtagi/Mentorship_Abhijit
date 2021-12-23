*** Settings ***
Documentation  JioMart Mobile App testing Locators
Library  AppiumLibrary


*** Variables ***
# Desired Capabilities
${server}  http://localhost:4723/wd/hub
${app package}  com.fynd.jiomart.debug
${app activity}  com.fynd.jiomart.activity.WebViewActivity
${appium}  appium
${platform}  Android
${platform version}  8.1.0
${device}  ZY32283DJV
# Login
${allow}  xpath=*//android.widget.LinearLayout[2]/android.widget.Button[2]
${jioLogo}  xpath=*//android.webkit.WebView/android.view.View/android.view.View[1]
${webviewContext}  WEBVIEW_com.fynd.jiomart.debug
${userName}  xpath=//input[@type="text"]
${number}  0760000257
${password}  xpath=//input[@type="password"]
${passwordCredential}  ABCjio@1
${login}  xpath=//input[@type="submit"]
# Logout
${sideMenu}  xpath=//img[@class="mobile-only icon"]
${logout}  Xpath=//div[text()="Logout"]
# Cart
${mobile&tablets}  xpath=//a[@class="gallery-link"][2]
${smartPhones}  xpath=//div[text()=" Smartphones "]
${viewAll}  xpath=//a[@href="/collection/smartphone"]
${jioPhone}  xpath=//div[text()=" JioPhone Next 32 GB, 2 GB RAM, Blue Smartphone, LS1542QWN "]
${editPincode}   xpath=//div[@class="pincode"]//img[@src="https://hdn-1.jiox0.de/jiox0/company/1/applications/605c6efd5ab8c845def75ae3/theme/pictures/free/original/edit.3ee9016dd14ef0927b27459eea2ae4b5.png"]
${enterPincode}  xpath=//div[@class="input-wrapper"]//input[@placeholder="Please enter pincode"]
${okPincode}  xpath=//img[@src="https://hdn-1.jiox0.de/jiox0/company/1/applications/605c6efd5ab8c845def75ae3/theme/pictures/free/original/right-icon-circle.1358c17b0fc1821fcbd3bb3ff3fa396c.png"]
${pincode}  400001
${buyNow}  xpath=//div[@class="action-btns-pdp"]//div[text()=" Buy Now "]
${home}  xpath=//div[text()="Home"]
${search}  xpath=//div[text()="Search"]
${searchContainer}  xpath=//div[@class="search-container"]
