Feature: Create article
    As an author,
    In order to publish news,
    I would like to be able to create an article.

    Background:
        Given I visit the Create Article Page

    Scenario: Successfully create Article [Happy path]
        When I fill in 'Title' field with 'My sad news story'
        And I fill in 'Body' field with 'Here is bodytext if a long sad news article'
        And I fill in "Author" field with 'Pablo Guera'
        And I click 'Create Article' button
        Then I should see 'Articel successfully created'
        And there should be an Article titled 'My sad news story' in the database
    
    Scenario: Author does not fill in Title [Sad path]
        When I fill in 'Body' field with 'Here is bodytext if a long sad news article'
        And I fill in "Author" field with 'Pablo Guera'
        And I click 'Create Article' button
        Then I should see "Title field can't be blank"

    Scenario: Author does not fill in Body [Sad path]
        When I fill in 'Title' field with 'My sad news story'
        And I fill in "Author" field with 'Pablo Guera'
        And I click 'Create Article' button
        Then I should see "Body field can't be blank"

    Scenario: Author does not fill in Author name [Sad path]
        When I fill in 'Title' field with 'My sad news story'
        And I fill in 'Body' field with 'Here is bodytext if a long sad news article'        
        And I click 'Create Article' button
        Then I should see "Author field can't be blank"