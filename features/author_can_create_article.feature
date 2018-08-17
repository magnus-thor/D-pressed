Feature: Create article
    As an User
    In order to publish news
    I would like to be able to create an article

    Background:
        Given I visit the Create article page

    Scenario: Successfully create Article [Happy path]
        When I fill in 'Title' field with 'My sad news story'
        And I fill in 'Body' field with 'Here is bodytext of a long sad news article'
        And I click 'Create Article' button
        Then I should be redirected to the 'landing page'
        And I should see 'Article successfully created'
        And there should be a Article titled 'My sad news story' in the database
    
    Scenario: User does not fill in Title [Sad path]
        When I fill in 'Body' field with 'Here is bodytext of a long sad news article'
        And I click 'Create Article' button
        Then I should see "Fields can't be blank. Your article could not be saved"

    Scenario: Author does not fill in Body [Sad path]
        When I fill in 'Title' field with 'My sad news story'
        And I click 'Create Article' button
        Then I should see "Fields can't be blank. Your article could not be saved"