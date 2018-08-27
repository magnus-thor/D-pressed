@javascript
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
        And I am on the 'My account' page
        Then I should see 'Basic user'
        And I click 'Subscribe' button
        Then I should see 'You have succesfully subscribed to D-pressed'
        Then I should see 'Subscriber'
        And my user role is 'subscriber'
        And I should be on the 'My account' page

    Scenario: Subcsriber presses button to become a Subscriber
        When I am logged in as 'sub@scriber.se'
        And I am on the 'My account' page
        Then I should see 'Subscriber'
        And I click 'Subscribe' button
        Then I should see 'You are already subscribed'
