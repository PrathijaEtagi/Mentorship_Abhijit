*** Settings ***
Library          SeleniumLibrary
Resource         C:\\Users\\Admin\\Documents\\GitHub\\Mentorship_Abhijit\\BrowserKeywords.robot
Suite Setup      Open Initial Browser
Suite Teardown   Close All Browsers

# All Keywords and variables are imported from BrowserKeywords robot file

# To run Press Cntrl+Shift+P  in Windows
# To run Press cmd-shift-P  in Mac



*** Test Cases ***

#To Setup Window
Browser Setup
    Window Maximize 
    Selenium wait 


#To Verify Moolya Website is Opened or Not
Verify Moolya Website is Opened

    Check Moolya Logo present or not

#To Open Home Tab
Open Home Tab

    Click on Home Tab
    Check Home page is opened or not
    
    # What We love to do
    Click on Remote Teams That Works 
    Click on Improve Coverage 
    Click on Automate Right Things 
    Click on Prevent Bugs
    Click on Build Super Teams  

    #To go to Solution Page from home page
    Click on This is Exciting Button
    Go Back

    #To go to Leadership page from Home page 
    Click on view more to navigate to Leadership page 
    Go Back

#To Open Solution dropdown
Open Solution Tab
    
    #To Open Moolya Power
    Click On Moolya Solution Tab
    Selenium wait
    Click on Moolya Power
    Verify Moolya Power Opened or not
    Selenium wait

    # Solved through a passion for testing
    Click on Test Ownership
    Click on Test Leadership 
    Click on Test Expertise   
    
    #To Open Moolya Startup Test LAB
    Click On Moolya Solution Tab
    Selenium wait
    Click on Startup Test LAB 
    Verify Moolya Startup Test LAB Opened or not
    
    #Testing is our life. Not yours.
    Click on Training Time 
    Click on Hiring Time
    Click on PO Time 
    Click on CTO Time 

    
#To Open Product dropdown
Open Product Tab

    #To Open Bugasura Tracker
    Click on Moolya Products tab
    Selenium wait
    Click On Bugasura Tracker
    Switch Back to Main Window
    
    #To Open Bugasura Report
    Click on Moolya Products tab
    Selenium wait 
    Click On Bugasura Report
    Switch Back to Main Window

#To Open Learning dropdown
Open Learning Tab
    
    #To Open Blogs
    Click On Learning Tab
    Selenium wait
    Click On Blogs 
    Switch Back to Main Window

    #To Open Leadership in testing
    Click On Learning Tab
    Selenium wait
    Click On Leadership in testing

    #To Open Deep Test
    Click On Learning Tab
    Selenium wait
    Click on Deep Test 
    Switch Back to Main Window

#To Open About us
Open About Us Tab

    Click On About Us Tab   
    Verify About us Page is Opened or not

#To Open Career
Open Career Tab

    Click On Career tab 
    Verify Career tab is Opened or not 



                        
                      
    
          
 
        
     
    

        


    







  
   

        




