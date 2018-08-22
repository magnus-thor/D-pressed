Feature: User can become a Subscriber
    As a registered User,
    In order to be able to see premium content,
    I would like to become a Subscriber of the service.

    Background: 
        Given the following user exists
        | email          | password    | role       |
        | pablo@test.com | my-password | basic_user |
        And I am logged in as 'pablo@test.com'

    Scenario: Basic_user presses button to become a Subscriber
        When I am on the 'User' page
        And my user role is displayed as 'basic_user'
        Then I click 'Subscribe' button
        Then I should see 'You have succesfully subscribed to D-pressed'
        And my user should be 'subscriber'
        And I should be on the 'User' page