*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keywords.resource
Suite Setup    Open Browser    browser=edge

*** Variables ***
${URL}   https://www.saucedemo.com

 
*** Test Cases ***

Successful Login
    I nagivate to the login page    ${URL}
    I input correct Credentials  
    I Click on the Login Button
    I am able view the home page

Unsuccessful Login - No Credentials
    I nagivate to the login page    ${URL}
    I input no credentials
    I Click on the Login Button
    I am able to see the expected error message for no credentials


Unsuccessful Login - No Username
    I nagivate to the login page    ${URL}
    I input only the password   
    I Click on the Login Button
    I am able to see the expected error message for no username

Unsuccessful Login - No Password
    I nagivate to the login page    ${URL}
    I input only the username  
    I Click on the Login Button
     I am able to see the expected error message for no password


Unsuccessful Login - Wrong Credentials
    I nagivate to the login page    ${URL}
    I Input wrong Credentials 
    I Click on the Login Button
    I am able to see the expected error message for wrong credentials