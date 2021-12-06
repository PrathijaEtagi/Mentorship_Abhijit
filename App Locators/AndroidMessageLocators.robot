*** Settings ***
Documentation    Siply Mobile App testing
Library          AppiumLibrary


*** Variables ***
${messagePackage}  com.google.android.apps.messaging
${messageActivity}  .home.HomeActivity
${firstMessage}  xpath=//android.support.v7.widget.RecyclerView[@content-desc="Conversation list"]/android.view.ViewGroup[1]
${messageText}  id=com.google.android.apps.messaging:id/message_text