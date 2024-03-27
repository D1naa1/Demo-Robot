*** Settings ***
Library    SeleniumLibrary
*** Keywords ***

User can login
    go to               https://automationplayground.com/crm/
    click link              Sign In
    page should contain     Login
    input text              id=email-id    admin@robotframeworktutorial.com
    input text              id=password    qwe
    click button            Submit
    wait until page contains     Our Happy Customers
add new user
    click link               id=new-customer
    input text              id=EmailAddress    dina@robotframeworktutorial.com
    input text              id=FirstName       dina
    input text              id=LastName        Ahmed
    input text              id=City            alex
    select from list by value    name=state      AR
    select radio button          gender         female
    select checkbox         name=promos-name
    click button            Submit
    sleep               3s

