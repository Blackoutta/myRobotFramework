*** Settings ***
Library  SeleniumLibrary  implicit_wait=20
Resource  PO/LandingPage.robot
Resource  PO/Cart.robot
Resource  PO/Product.robot
Resource  PO/SearchResults.robot
Resource  PO/SignIn.robot
Resource  PO/TopNav.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Keywords ***
Search for Products
    LandingPage.Load
    TopNav.Type In Product
    TopNav.Begin Search


Select Product from Search Results
    SearchResults.Select Product

Add Product to Cart
    Product.Add To Cart

Begin Checkout
    Cart.Begin Checkout
    SignIn.Verify SignIn Page
