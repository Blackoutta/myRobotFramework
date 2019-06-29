*** Settings ***
Library  SeleniumLibrary  implicit_wait=10

*** Keywords ***
Select Product
    Click Link  //h5[@class='a-color-base s-line-clamp-4'])[1]//a
