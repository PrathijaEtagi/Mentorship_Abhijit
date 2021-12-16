*** Settings ***
Documentation  API Testing
Library  RequestsLibrary
Library  JSONLibrary
Library    String
Library    Collections
Library    XML
Resource  ..\\..\\..\\App Locators\\APIvariables.robot


*** Keywords ***
Create Sessions
    Create Session  MySession  ${base_url}

Status Code Should Be 200
    Status Should Be    ${OKSuccessStatus}

Status Code Should Be 201
    Status Should Be    ${created}

Send Get Request For Initial Information
    ${response1}  Get  ${base_url}
    ${message1}  Convert To String    ${response1.content}
    Should Be Equal    ${message1}   {"message":"Welcome to the Simple Books API."}

Check API Status
    ${response2}  GET On Session  MySession   ${status}
    ${message2}  Convert To String    ${response2.content}
    Should Be Equal    ${message2}   {"status":"OK"}

To Get All Available Book List
    ${response3}  Get On Session  MySession  ${books}
    Log To Console    ${response3.content}

To Get All Non Fictional Books
    ${response4}  Get On Session  MySession  ${books}  params=${nonFiction}
    Log To Console    ${response4.content}

To Get Only Non Fictional Book Which Is Available In Stock
    ${response5}  Get On Session  MySession  ${books}  params=${nonFiction}
    ${nonfictionJson}  Convert String To Json  ${response5.content}
    ${value1}  Get value from JSON  ${nonfictionJson}   $[0].available
    ${value2}  Get value from JSON  ${nonfictionJson}   $[1].available
    IF    ${value1} == [True]
        ${bookID}  Get value from JSON  ${nonfictionJson}   $[0].id
        Log To Console  ${nonfictionJson}[0]
    END
    IF    ${value2} == [True]
        ${bookID}  Get value from JSON  ${nonfictionJson}   $[1].id
        Log To Console  ${nonfictionJson}[1]
    END
    Set Global Variable  ${bookID}

To Register New APL Client
    ${username}  Generate Random String  8  [LOWER]
    Set Global Variable  ${username}
    ${body}  Create Dictionary  clientName=Abhijith  clientEmail=${username}@gmail.com
    ${header}  Create Dictionary  Content-Type=application/json
    ${response6}    Post Request   MySession  ${apiClients}    data=${body}    headers=${header}
    #${accessTokenJson}  Convert String To Json  ${response6.content}
    #${accessToken}  Get value from JSON  ${accessTokenJson}   $.accessToken
    #Set Global Variable  ${accessToken}
    ${accessToken}  evaluate  $response6.json().get("accessToken")
    Log to Console  ${accessToken}
    Set Global Variable  ${accessToken}
    #Convert Json To String    ${accessToken}
    #Convert To List  ${accessToken}
    #Log To Console    ${accessToken}
