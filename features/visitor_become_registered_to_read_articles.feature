Feature: A visitor needs to become a registered user in order to read the articles
    As a Visitor, 
    In order to be able to read the articles,
    I would like to become a registered (non paying) User. 

    Background:
        Given the following article exists:
        |title          |body                                                           |
        |This is so sad |A recent report suggest that news are mostly sad. Which is sad.|
    
    Scenario: Visitor tries to read article
        When I click on 'This is so sad'
        Then I should see 'You need to register to read the article'
        And I should be on the 'Register' page

    Scenario: Visitor registers
        When I fill in 'Name' with 'Pablo'
        And I fill in 'Email' with 'pablo@test.com'
        And I fill in 'Password' with 'my-password'
        And I fill in 'Password confirmation' with 'my-password'
        And I click on 'Sign up'
        Then I should see 'Welcome! Registration successfull'
        
