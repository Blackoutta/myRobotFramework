*** Settings ***
Documentation  This is the test suite for practice
Resource  ../Resources/Common.robot
Resource  ../Resources/TutorialApp.robot
Test Setup  Begin Web Test  chrome
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
User Should Be Able To View The "Home" Page
    [Tags]  Smoke
    TutorialApp.Open Home Page

User Should Be Able To View The "Team" Page
    [Tags]  Smoke  Current
    TutorialApp.Open Home Page
    TutorialApp.Verify Team Page
