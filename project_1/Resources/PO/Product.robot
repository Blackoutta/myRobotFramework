*** Settings ***
Library  SeleniumLibrary  implicit_wait=10

*** Keywords ***
Add To Cart
    Click Button  //input[@name='submit.add-to-cart' or contains(text(), 'Add to Cart')]
