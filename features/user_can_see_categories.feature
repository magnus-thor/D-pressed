Feature: Categories and tags for the articles
    As a user,
    In order to easily find articles of my interest,
    I would like to have all articles to be categorised and tagged

    Background: 
        Given the following categories exist
        | name     |
        | Politics |
        | Economy  |
        | Science  |
        | Sports   |
        Given the following article exist
        | title          | body                                                             | 
        | This is so sad | A recent report suggest that news are mostly sad. Which is sad.  |
        And the following user exists
        | email          | password    | role       |
        | pablo@test.com | my-password | subscriber |
        And I am logged in as "pablo@test.com"

    Scenario:
        When I am on the "landing" page 
        Then I should see "Politics"
        And I should see "Economy"
        And I should see "Science"
        And I should see "Sports"