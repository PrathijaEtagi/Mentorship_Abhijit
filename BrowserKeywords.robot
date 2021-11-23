*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}                          https://moolya.com/
${browser}                      Chrome
${Moolya Logo}                  xpath=//img[@class="navbar-brand moolya-logo"]
${Page Down}                    xpath=//body   
${End key}                      \ue00f

# Home page Variables
${Moolya Home page}             xpath= //a[@href="//moolya.com/Home"]
${We should talk}               xpath=//button[text()='We should talk']
${Build Super Teams}            xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-functional-tab"]
${Prevent Bugs}                 xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-performance-tab"]
${Automate Right Things}        xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-automation-tab"]
${Improve Coverage}             xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-security-tab"]
${Remote Teams That Works}      xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-remote-teams-tab"]
${This is exciting}             xpath=//div[@id="v-pills-tab"]//button[text()='This is exciting']
${View more}                    xpath=//input[@class="custom-btn "]           

# Solution Page
${Moolya Solution}              id=moolyaSolution
# Solution page Moolya Power
${Moolya Power}                 xpath=//a[text()='MOOLYA POWER'] 
${Moolya power title}           xpath=//h1[text()='Moolya Power']
${Test Ownership}               xpath=//div[@id="v-pills-tab"]//button[@id="ownership-tab"]
${Test Leadership}              xpath=//div[@id="v-pills-tab"]//button[@id="plug-play-tab"]
${Test Expertise}               xpath=//div[@id="v-pills-tab"]//button[@id="provenAutomation-tab"]
# Solution page Moolya Lab
${Startup Test Lab}             xpath=//a[text()='STARTUP TEST LAB']
${Startup Test Lab Text}        xpath=//p[@class="custom-disc ml-0"]
${CTO Time}                     xpath=//div[@id="v-pills-tab"]//a[@id="tech-debt"]
${PO Time}                      xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-notification-tab"]
${Hiring Time}                  xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-messages-tab"]
${Training Time}                xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-web-tab"]

#Moolya products
${Moolya Products}              id=moolyaProducts
${Bugasura Tracker}             xpath=//a[text()='BUGASURA TRACKER']
${Bugasura Report}              xpath=//a[text()='BUGASURA REPORTER']
${Moolya Learning}              id=learning
${Moolya Blogs}                 xpath=//a[text()='BLOGS']
${Moolya Leadership}            xpath=//a[text()='LEADERSHIP IN TESTING']
${Moolya Deep Test}             xpath=//a[text()='DEEP TEST']

#Moolya About us
${Moolya About Us}              xpath=//a[text()='ABOUT US']
${About Us page header}         xpath= //h1[text()='SMARTER TOGETHER']

#Moolya Career
${Moolya career}                xpath=//a[text()='CAREER']
${Career page header}           xpath=//h5[text()='Become a respected Leader']

*** Keywords ***

 Open Initial Browser                     Open Browser   ${url}      ${browser}
 Window Maximize                          Maximize Browser Window  
 Selenium wait                            Set Selenium Implicit Wait    5s
Check Moolya Logo present or not          Page Should Contain Image   ${Moolya Logo} 
To go bottom of page                      Press Keys        ${Page Down}     ${End key} 

# Home page
 Click on Home Tab                        Click Element   ${Moolya Home page}
 Check Home page is opened or not         Wait Until Page Contains Element   ${We should talk}
 Click on We should talk                  Click Element    ${We should talk}
 Click on Build Super Teams               Click Element    ${Build Super Teams} 
 Click on Prevent Bugs                    Click Element    ${Prevent Bugs} 
 Click on Automate Right Things           Click Element    ${Automate Right Things}
 Click on Improve Coverage                Click Element    ${Improve Coverage} 
 Click on Remote Teams That Works         Click Element    ${Remote Teams That Works}
 Click on This is Exciting Button         Click Element    ${This is exciting}
 Click on view more to navigate to Leadership page           Click Element   ${View more}  


 # Solution Page
 Click On Moolya Solution Tab             Click Element    ${Moolya Solution}

 # Solution page Moolya Power
 Click on Moolya Power                    Click Element      ${Moolya Power}  
Verify Moolya Power Opened or not         Page Should Contain Element     ${Moolya power title} 
Click on Test Expertise                   Click Element    ${Test Expertise} 
Click on Test Leadership                  Click Element  ${Test Leadership}  
Click on Test Ownership                   Click Element  ${Test Ownership} 

# Solution page Moolya Lab
 Click on Startup Test LAB                Click Element        ${Startup Test Lab}
 Verify Moolya Startup Test LAB Opened or not    Page Should Contain Element      ${Startup Test Lab Text}
 Click on CTO Time                       Click Element    ${CTO Time} 
 Click on PO Time                        Click Element    ${PO Time} 
 Click on Hiring Time                    Click Element    ${Hiring Time} 
 Click on Training Time                  Click Element    ${Training Time} 

 #Moolya products
 Click on Moolya Products tab             Click Element       ${Moolya Products}
 Click On Bugasura Tracker                Click Element    ${Bugasura Tracker} 
 Switch Back to Main Window               Switch Window  
 Click On Bugasura Report                 Click Element   ${Bugasura Report} 
 Click On Learning Tab                    Click Element    ${Moolya Learning} 
 Click On Blogs                           Click Element   ${Moolya Blogs}
 Click On Leadership in testing           Click Element   ${Moolya Leadership}  
 Click on Deep Test                       Click Element    ${Moolya Deep Test}  

 #Moolya About us
 Click On About Us Tab                    Click Element    ${Moolya About Us}
 Verify About us Page is Opened or not    Page Should Contain Element    ${About Us page header}

 #Moolya Career
 Click On Career tab                      Click Element   ${Moolya career}
 Verify Career tab is Opened or not       Page Should Contain Element   ${Career page header} 

 
 