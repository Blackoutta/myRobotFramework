*** Settings ***
Library  SeleniumLibrary  implicit_wait=10

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser

Insert Test Data
    Log    Inserting data...

Purge Test Data
    Log    Purging data...
