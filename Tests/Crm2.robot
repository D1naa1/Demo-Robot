*** Settings ***
Documentation    this is my first script using robotframework
Resource     ../Resources/CrmApp.robot
Resource     ../Resources/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test
# robot -d results tests/Common.robot
*** Variables ***

*** Test Cases ***
OpenBrowsertestCase number1
   [Documentation]  Testing Crm website
   [Tags]           Smoke 001
    CrmApp.User can login
    CrmApp.add new user


