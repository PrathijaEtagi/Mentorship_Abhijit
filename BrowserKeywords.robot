*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}                          https://moolya.com/
${browser}                      Chrome
${Moolya Logo}                  xpath=//img[@class="navbar-brand moolya-logo"]
${Moolya Home page}             xpath= //a[@href="//moolya.com/Home"]
${We should talk}               xpath=//button[text()='We should talk']
${Moolya Solution}              id=moolyaSolution
${Moolya Power}                 xpath=//a[text()='MOOLYA POWER'] 
${Moolya power title}           xpath=//h1[text()='Moolya Power']
${Startup Test Lab}             xpath=//a[text()='STARTUP TEST LAB']
${Startup Test Lab Text}        xpath=//p[@class="custom-disc ml-0"]
${Moolya Products}              id=moolyaProducts
${Bugasura Tracker}             xpath=//a[text()='BUGASURA TRACKER']
${Bugasura Report}              xpath=//a[text()='BUGASURA REPORTER']
${Moolya Learning}              id=learning
${Moolya Blogs}                 xpath=//a[text()='BLOGS']
${Moolya Leadership}            xpath=//a[text()='LEADERSHIP IN TESTING']
${Moolya Deep Test}             xpath=//a[text()='DEEP TEST']
${Moolya About Us}              xpath=//a[text()='ABOUT US']
${About Us page header}         xpath= //h1[text()='SMARTER TOGETHER']
${Moolya career}                xpath=//a[text()='CAREER']
${Career page header}           xpath=//h5[text()='Become a respected Leader']

*** Keywords ***

 Open Initial Browser                    Open Browser   ${url}      ${browser}
 Window Maximize                          Maximize Browser Window  
 Selenium wait                            Set Selenium Implicit Wait    5s
Check Moolya Logo present or not         Page Should Contain Image   ${Moolya Logo} 
Click on Home Tab                         Click Element   ${Moolya Home page}
 Check Home page is opened or not         Wait Until Page Contains Element   ${We should talk}
 Click On Moolya Solution Tab             Click Element    ${Moolya Solution}
 Click on Moolya Power                    Click Element      ${Moolya Power}  
Verify Moolya Power Opened or not         Page Should Contain Element     ${Moolya power title} 
 Click on Startup Test LAB                Click Element        ${Startup Test Lab}
 Verify Moolya Startup Test LAB Opened or not    Page Should Contain Element      ${Startup Test Lab Text}
 Click on Moolya Products tab             Click Element       ${Moolya Products}
 Click On Bugasura Tracker                Click Element    ${Bugasura Tracker} 
 Switch Back to Main Window               Switch Window  
 Click On Bugasura Report                 Click Element   ${Bugasura Report} 
 Click On Learning Tab                    Click Element    ${Moolya Learning} 
 Click On Blogs                           Click Element   ${Moolya Blogs}
 Click On Leadership in testing           Click Element   ${Moolya Leadership}  
 Click on Deep Test                       Click Element    ${Moolya Deep Test}  
 Click On About Us Tab                    Click Element    ${Moolya About Us}
 Verify About us Page is Opened or not    Page Should Contain Element    ${About Us page header}
 Click On Career tab                      Click Element   ${Moolya career}
 Verify Career tab is Opened or not       Page Should Contain Element   ${Career page header} 

 
 