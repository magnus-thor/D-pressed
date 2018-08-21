Feature: Internal administration page for user
    As a User,
    In order to manage my personal details,
    I would like to be able to access my Internal page.

    Background: 
        Given the following article exists
        | title          | body                                                             | 
        | This is so sad | A recent report suggest that news are mostly sad. Which is sad.  | 

    Scenario: Visitor registers
        When I am on the 'Landing' page
        And I click on 'My account'
        Then I should be on 'My account' page
