*** Settings ***
Documentation  There are some web tests
Library  Dialogs
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458


*** Test Cases ***
Logged out user can search for product
    [Tags]  Web
    ${new_browser} =  Get Selection From User  Which browser?  chrome  ie  firefox
    Set Global Variable  ${BROWSER}  ${new_browser}
    AmazonApp.Search for Products

Logged out user can add product to cart
    [Tags]  Web
    AmazonApp.Search for Products
    Execute Manual Step  Do something manually!  It failed!
    AmazonApp.Select Product from Search Results
    Pause Execution
    AmazonApp.Add Product to Cart