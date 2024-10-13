*** Settings ***
Documentation    Keyword for simple test
Library     SeleniumLibrary

*** Variables ***
${URL}  http://automationpractice.com/index.php
${BROWSER}  chrome
${APPLICATIONLOGO}  id:header_logo
${CART}  class:shopping_cart
${HOMEPAGE_SIGNIN_BTN}  class:login
${EMAIL_LOGIN}  name:email
${PASSWORD_LOGIN}  id:passwd
${LOGIN_BTN}  id:SubmitLogin
${LOGGEDIN_USER}  Dorice Mbonde
${VALID_USERNAME}  ${EMPTY}
${VALID_PASSWORD}   ${EMPTY}

*** Keywords ***
Verify that Logo and add to cart button are displayed
     open Browser   ${URL}     ${BROWSER}
     Maximize Browser Window
     Wait Until Element Is Visible    ${APPLICATIONLOGO}     10s
     Wait Until Element Is Visible    ${CART}   10s
     [Teardown]  close browser

Login
     [Arguments]  ${username}  ${password}
     Open Browser   ${URL}     ${BROWSER}
     Click Element    ${HOMEPAGE_SIGNIN_BTN}
     Input Text    ${EMAIL_LOGIN}    ${username}
     Input Text    ${PASSWORD_LOGIN}     ${password}
     Click Element   ${LOGIN_BTN}
     Page Should Contain    ${LOGGEDIN_USER}
     [Teardown]  close browser


