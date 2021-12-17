*** Settings ***
Documentation  API Testing
Library  RequestsLibrary
Library  JSONLibrary
Library    String
Library    Collections
Resource  ..\\..\\..\\App Locators\\APIvariables.robot


*** Keywords ***
Create Sessions
    Create Session  MySession  ${base_url}

Status Code Should Be 200
    Status Should Be    ${OKSuccessStatus}

Status Code Should Be 201
    Status Should Be    ${created}

Status Code Should Be 204
    Status Should Be    ${noContent}

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
    ${response6}    Post Request    MySession  ${apiClients}    data=${body}    headers=${header}
    ${accessToken}  Evaluate  $response6.json().get("accessToken")
    Log To Console  ${accessToken}
    Set Global Variable  ${accessToken}

To Add AccessToken To header
    ${orderHeader}  Create Dictionary  Authorization=${accessToken}  Content-Type=application/json
    Set Global Variable    ${orderHeader}

To Order In Stock Non Fiction Book
    ${orderBody}  Create Dictionary  bookId=${bookID}  customerName=${username}
    To Add AccessToken To header
    ${response7}    Post Request    MySession    ${orders}    data=${orderBody}    headers=${orderHeader}
    Log To Console   ${response7.content}
    ${orderId}  Evaluate  $response7.json().get("orderId")
    Log To Console  ${orderId}
    Set Global Variable  ${orderId}

To Get All Ordered Books
    ${response8}  Get On Session  MySession    ${orders}    headers=${orderHeader}
    Log To Console    ${response8.content}

To Get An Order Using OrderId
    ${response9}  Get On Session  MySession  ${orders}  params=orderid=${orderId}    headers=${orderHeader}
    Log To Console    ${response9.content}
   
To Change The Name Of Customer In An Order
    ${newBody}  Create Dictionary    customerName=${newUserName}
    Patch On Session    MySession  ${orders}    params=orderid=${orderId}    json=${newBody}    headers=${orderHeader}

To Verify Whether Customer Name Changed
    ${response10}  Get On Session  MySession  ${orders}  params=orderid=${orderId}    headers=${orderHeader}
    Log To Console    ${response10.content}
    ${response10Json}  Convert String To Json  ${response10.content}
    ${newName}  Get value from JSON  ${response10Json}   $[0].customerName
    Log To Console  ${newName}
    Should Be Equal    ${newUserName}    ${newName}

To Delete Order
    ${resp}    Delete On Session    MySession  ${orders}  headers=${orderHeader}  params=orderid=${orderId}
    Log To Console    ${resp.content}