*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource  SimpleKeywords.robot

*** Test Cases ***
Check add to cart and logo on homepage
      Verify that Logo and add to cart button are displayed


Login with correct credentials
      Login    ${VALID_USERNAME}  ${VALID_PASSWORD}

*** Keywords ***
