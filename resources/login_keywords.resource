*** Settings ***
Library    SeleniumLibrary
Variables    ../variables/variables.py



*** Keywords ***
I nagivate to the login page
    [Arguments]    ${URL}
    Go to    ${URL} 

I Input correct Credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["correctData"]["username"]}
    Input Text    id=password    ${LOGIN_DATA["correctData"]["password"]}

I Input wrong Credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["wrongData"]["username"]}
    Input Text    id=password    ${LOGIN_DATA["wrongData"]["password"]}


I Click on the Login Button
    Click Button    id=login-button


I am able view the home page
    ${location}    Get Location
    Should Be Equal    ${location}    https://www.saucedemo.com/inventory.html


I am able to see the expected error message for no credentials
    Wait Until Element Contains   class=error-message-container    ${ERROR_MESSAGES["noCredentials"]}

I am able to see the expected error message for no username
    Wait Until Element Contains   class=error-message-container    ${ERROR_MESSAGES["noUsername"]}

I am able to see the expected error message for no password
    Wait Until Element Contains   class=error-message-container    ${ERROR_MESSAGES["noPassword"]}

I am able to see the expected error message for wrong credentials
    Wait Until Element Contains   class=error-message-container    ${ERROR_MESSAGES["wrongCredentials"]}



I input only the username
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["correctData"]["username"]}


I input only the password
    Wait Until Element Is Visible    id=password
    Input Text    id=password    ${LOGIN_DATA["correctData"]["password"]}


I input no credentials
    Wait Until Element Is Visible    id=user-name
