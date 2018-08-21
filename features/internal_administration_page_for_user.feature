Feature: Internal administration page for user
    As a User,
    In order to manage my personal details,
    I would like to be able to access my Internal page.

    Background:
        Given the following user exists
        | email          |
        | pablo@test.com |
        And I am logged in as 'pablo@test.com'


    Scenario: Visitor registers
        When I am on the 'Landing' page
        And I click on 'My account'
        Then I should be redirected to the 'My account' page
        And I click on 'Edit my account'
        Then I should be redirected to the 'Edit account' page