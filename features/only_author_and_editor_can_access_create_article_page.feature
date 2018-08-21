Feature: Assign Roles to different Users
    As a system owner,
    In order to differentiate between the Users,
    I would like to be able to apply different roles to Users.

    Background:
        Given the following users exists
        |email              |password   |role       |
        |user@user.se       |my-password|basic_user |
        |subscriber@user.se |my-password|subscriber |
        |author@user.se     |my-password|author     |
        |editor@user.se     |my-password|editor     |

    Scenario: User tries to access Create Article page
        When I am logged in as 'user@user.se'
        And I am on the 'Landing' page
        And I click on 'New Article'
        Then I should see 'Access denied'
        And I should be redirected to the 'landing' page

    Scenario: Subscriber tries to access Create Article page
        When I am logged in as 'subscriber@user.se'
        And I am on the 'Landing' page
        And I click on 'New Article'
        Then I should see 'Access denied'
        And I should be redirected to the 'landing' page

    Scenario: Author tries to access Create Article page
        When I am logged in as 'author@user.se'
        And I am on the 'Landing' page
        And I click on 'New Article'
        Then I should be redirected to the 'create article' page

    Scenario: Editor tries to access Create Article page
        When I am logged in as 'editor@user.se'
        And I am on the 'Landing' page
        And I click on 'New Article'
        And I should be redirected to the 'create article' page