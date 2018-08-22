Feature: User can become a Subscriber
    As a registered User,
    In order to be able to see premium content,
    I would like to become a Subscriber of the service.

    Background: 
        Given the following user exists
        | email          | role       |
        | pablo@test.com | basic_user |
        | sub@scriber.se | subscriber |

    Scenario: Basic_user presses button to become a Subscriber
        When I am logged in as 'pablo@test.com'
        And I am on the 'User' page
        Then my user role should be displayed as 'basic_user'
        And I click 'Subscribe' button
        Then I should see 'You have succesfully subscribed to D-pressed'
        And my user role should be displayed as 'subscriber'
        And I should be on the 'User' page

    Scenario: Subcsriber presses button to become a Subscriber
        When I am logged in as 'sub@scriber.se'
        And I am on the 'User' page
        Then my user role is displayed as 'subscriber'
        And I click 'Subscribe' button
        Then I should see 'You are already subscribed'
        And my user role should be displayed as 'subscriber'
        And I should be on the 'User' page