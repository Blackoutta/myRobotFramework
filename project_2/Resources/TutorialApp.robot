*** Settings ***
Resource  PO/LandingPage.robot
Resource  PO/NavBar.robot
Resource  PO/TeamPage.robot

*** Variables ***
${START_URL} =  http://www.robotframeworktutorial.com/front-office/

*** Keywords ***
Open Home Page
    LandingPage.Load

Verify Team Page
    NavBar.Click On "Team" Button
    TeamPage.Verify Main Heading
