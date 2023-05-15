Feature: Login

    User cannot be login if the username or password is incorrect

    Scenario: Standard user login
        Given Username is standard_user
        And Password is secret_sauce
        When User typed standard_user as ausername
        And User typed secret_sauce as a password
        And Click on the login button
        Then User logged in successfully
        And User got redirected to the product page

    Scenario: Locked-out user login
        Given Username is locked_out_user
        And Password is secret_sauce
        When User typed locked_out_user as ausername
        And User typed secret_sauce as a password
        And Click on the login button
        Then User got an error 
        And Cannot login to the account

    Scenario: Problem user login
        Given Username is problem_user
        And Password is secret_sauce
        When User typed problem_user as ausername
        And User typed secret_sauce as a password
        And Click on the login button
        Then User logged in successfully
        And User got redirected to the product page
        And User found that there is a problem with the images


    Scenario: Performance glitch user login
        Given Username is performance_glitch_user
        And Password is secret_sauce
        When User typed performance_glitch_user as ausername
        And User typed secret_sauce as a password
        And Click on the login button
        Then User logged in successfully
        And User got redirected to the product page
        And User found that the website is processing very slowly

    Scenario: blank login
        Given User is on the login page
        When User click the login button
        Then User got an error
        And Cannot login to the website