*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${NAVBAR_TEAM_BUTTON} =  //a[@href='#team']

*** Keywords ***
Click On "Team" Button
    Click Link  ${NAVBAR_TEAM_BUTTON}
