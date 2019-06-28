*** Settings ***
Library  SeleniumLibrary  implicit_wait=10

*** Variables ***
${TOPNAV_SEARCH_BAR} =     id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =  //input[@class='nav-input']

*** Keywords ***
Type In Product
    Input Text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}

Begin Search
    Click Button  ${TOPNAV_SEARCH_BUTTON}
