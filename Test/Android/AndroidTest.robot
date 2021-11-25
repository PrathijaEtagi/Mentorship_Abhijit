*** Settings ***
Documentation    Siply Mobile App testing
Library          AppiumLibrary


*** Variables ***
${server}  http://localhost:4723/wd/hub
${app package}  in.siply.ionic
${app activity}  m.capitalquotient.siplyv2.MainActivity
${appium}  appium
${platform}  Android
${platform version}  11
${device}  PVT8WS59GY8XPFMB


*** Test Cases ***
Open Apllications
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform version}  deviceName=${device}  automationName=${appium}  appActivity=${app activity}  appPackage=${app package}
