*** Settings ***
Documentation  API Testing Keywords
Library  String
Library  Collections
Library  RequestsLibrary
Library  JSONLibrary
Resource  ../../../../App Locators/API/BookAPI/BookAPILocators.robot


*** Keywords ***
Create Sessions
    [Documentation]  To Create New Session
    Create Session  MySession  ${base_url}

Status Code Should Be 200
    [Documentation]  To Verify Status Code As 200
    Status Should Be  ${OKSuccessStatus}

Status Code Should Be 201
    [Documentation]  To Verify Status Code As 201
    Status Should Be  ${created}

Status Code Should Be 204
    [Documentation]  To Verify Status Code As 204
    Status Should Be  ${noContent}

Send Get Request For Initial Information
    [Documentation]  To Get Initial Information
    ${response1}  Get  ${base_url}
    ${message1}  Convert To String    ${response1.content}
    Should Be Equal  ${message1}  {"message":"Welcome to the Simple Books API."}

Check API Status
    [Documentation]  To Get API Status
    ${response2}  GET On Session  MySession   ${status}
    ${message2}  Convert To String  ${response2.content}
    Should Be Equal  ${message2}  {"status":"OK"}

To Get All Available Book List
    [Documentation]  To Get List Of Books
    ${response3}  Get On Session  MySession  ${books}
    Log To Console  ${response3.content}

To Get All Non Fictional Books
    [Documentation]  To Get Non Fictional Books
    ${response4}  Get On Session  MySession  ${books}  params=${nonFiction}
    Log To Console  ${response4.content}

To Get Only Non Fictional Book Which Is Available In Stock
    [Documentation]  To Get In Stock Book
    ${response5}  Get On Session  MySession  ${books}  params=${nonFiction}
    ${nonfictionJson}  Convert String To Json  ${response5.content}
    ${value1}  Get Value From JSON  ${nonfictionJson}   $[0].available
    ${value2}  Get Value From JSON  ${nonfictionJson}   $[1].available
    IF    ${value1} == [True]
        ${bookID}  Get Value From JSON  ${nonfictionJson}   $[0].id
        Log To Console  ${nonfictionJson}[0]
    END
    IF    ${value2} == [True]
        ${bookID}  Get Value From JSON  ${nonfictionJson}   $[1].id
        Log To Console  ${nonfictionJson}[1]
    END
    Set Global Variable  ${bookID}

To Register New APL Client
    [Documentation]  To Register To API Clients
    ${username}  Generate Random String  8  [LOWER]
    Set Global Variable  ${username}
    ${body}  Create Dictionary  clientName=Abhijith  clientEmail=${username}@gmail.com
    ${header}  Create Dictionary  Content-Type=application/json
    ${response6}  Post Request  MySession  ${apiClients}  data=${body}  headers=${header}
    ${accessToken}  Evaluate  $response6.json().get("accessToken")
    Log To Console  ${accessToken}
    Set Global Variable  ${accessToken}

To Add AccessToken To Header
    [Documentation]  To Add AccessToken To Header
    ${orderHeader}  Create Dictionary  Authorization=${accessToken}  Content-Type=application/json
    Set Global Variable  ${orderHeader}

To Order In Stock Non Fiction Book
    [Documentation]  To Order Book
    ${orderBody}  Create Dictionary  bookId=${bookID}  customerName=${username}
    To Add AccessToken To Header
    ${response7}  Post Request  MySession  ${orders}  data=${orderBody}  headers=${orderHeader}
    Log To Console  ${response7.content}
    ${orderId}  Evaluate  $response7.json().get("orderId")
    Log To Console  ${orderId}
    Set Global Variable  ${orderId}

To Get All Ordered Books
    [Documentation]  To Get Ordered Book
    ${response8}  Get On Session  MySession  ${orders}  headers=${orderHeader}
    Log To Console  ${response8.content}

To Get An Order Using OrderId
    [Documentation]  To Get An Order
    ${response9}  Get On Session  MySession  ${orders}  params=orderid=${orderId}  headers=${orderHeader}
    Log To Console  ${response9.content}

To Change The Name Of Customer In An Order
    [Documentation]  To Change Name In Order
    ${newBody}  Create Dictionary  customerName=${newUserName}
    Patch On Session  MySession  ${orders}/${orderId}    json=${newBody}  headers=${orderHeader}

To Verify Whether Customer Name Changed
    [Documentation]  To Verify Name Was Changed In Order
    ${response10}  Get On Session  MySession  ${orders}/${orderId}  headers=${orderHeader}
    Log To Console  ${response10.content}
    ${newName}  Evaluate  $response10.json().get("customerName")
    Should Be Equal  ${newUserName}  ${newName}

To Delete Order
    [Documentation]  To Delete The Order
    ${resp}  Delete On Session  MySession  ${orders}/${orderId}  headers=${orderHeader}
    Log To Console  ${resp.content}
