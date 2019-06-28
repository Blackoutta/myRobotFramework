*** Settings ***
Library  SeleniumLibrary  implicit_wait=10


*** Variables ***
${SIGNIN_SIGNIN_BUTTON} =  //input[@id='signInSubmit']

*** Keywords ***
Verify SignIn Page
    Page Should Contain Element  ${SIGNIN_SIGNIN_BUTTON}
