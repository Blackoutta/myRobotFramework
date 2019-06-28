*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot

# Run before all test cases
Suite Setup  Insert Test Data

# Run before each test
Test Setup  Begin Web Test

# Run after each test
Test Teardown  End Web Test

# Run after all test cases
Suite Teardown  Purge Test Data
*** Variables ***


*** Test Cases ***
Logged out user should be asked to sign in before check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
