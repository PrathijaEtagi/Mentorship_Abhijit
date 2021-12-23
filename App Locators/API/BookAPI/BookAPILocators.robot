*** Settings ***
Documentation  API Testing Locators
Library  RequestsLibrary


*** Variables ***
${base_url}  https://simple-books-api.glitch.me
${status}  /status
${OKSuccessStatus}  200
${books}  /books
${nonFiction}  type=non-fiction
${apiClients}  /api-clients
${created}  201
${orders}  /orders
${newUserName}  Abhijith
${noContent}  204
