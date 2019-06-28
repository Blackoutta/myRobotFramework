*** Settings ***
Documentation  这只是一个robot framwork 的演示测试用例
Library  SeleniumLibrary  implicit_wait=10

*** Variables ***


*** Test Cases ***
用户必须登陆才能结账
    [Documentation]  未登录的用户必须登陆才能结账
    [Tags]  冒烟测试
    开始网页测试
    搜索产品
    选择产品
    将产品添加到购物车
    开始结账
    结束网页测试



*** Keywords ***
开始网页测试
    Open Browser  about:blank  chrome

搜索产品
    Go To  http://www.amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  //input[@class='nav-input']

选择产品
    Click Element  //span[contains(text(), "FERRARI 458")]

将产品添加到购物车
    Click Button  //input[@name='submit.add-to-cart']

开始结账
    Click Link  //a[@id='hlb-ptc-btn-native']
    Page Should Contain Element  //input[@id='signInSubmit']

结束网页测试
    Close Browser
