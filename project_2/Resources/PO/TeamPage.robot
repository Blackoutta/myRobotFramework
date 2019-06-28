*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TEAMPAGE_MAIN_HEADING} =  //h2[contains(text(),'Our Amazing Team')]

*** Keywords ***
Verify Main Heading
    Wait Until Element Is Visible  ${TEAMPAGE_MAIN_HEADING}
    Page Should Contain Element  ${TEAMPAGE_MAIN_HEADING}
