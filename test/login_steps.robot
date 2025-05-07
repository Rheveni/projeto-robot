*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keywords.resource
Test Setup    Open Browser    browser=edge

*** Variables ***
${URL}   https://www.saucedemo.com
${BROWSER}    edge
${USERNAME}   standard_user
${PASSWORD}   secret_sauce

 
*** Test Cases ***
Successful Login
    I nagivate to the login page    ${URL}
    I input correct Credentials    ${USERNAME}    ${PASSWORD}
    I Click on the Login Button
    I am able view the home page

Unsuccessful Login - No Credentials
    I nagivate to the login page    ${URL}
    I input no credentials
    I Click on the Login Button
    I am able to see the expected error message  Epic sadface: Username is required


Unsuccessful Login - No Username
    I nagivate to the login page    ${URL}
    I input only the password    ${PASSWORD}
    I Click on the Login Button
    I am able to see the expected error message    Epic sadface: Username is required

Unsuccessful Login - No Password
    I nagivate to the login page    ${URL}
    I input only the username    ${USERNAME}
    I Click on the Login Button
     I am able to see the expected error message  Epic sadface: Password is required


Unsuccessful Login - Wrong Credentials
    I nagivate to the login page    ${URL}
    I Input wrong Credentials    asfafdasfaf    cdsffdafdsa
    I Click on the Login Button
    I am able to see the expected error message    Epic sadface: Username and password do not match any user in this service