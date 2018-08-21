Feature: Author can attach an image to the article 
    As an Author,
    In order to provide more value to my readers,
    I would like to be able to attach an image to the article.

    Background:
        Given the following user exists
        | email          | password    |
        | pablo@test.com | my-password |
           
        And the following article exists
        | title          | body                                                             | image   |
        | This is so sad | A recent report suggest that news are mostly sad. Which is sad.  | sad.png |
        And I am logged in as 'pablo@test.com'
        And I visit the Create article page

        Scenario: Successfully create Article [Happy path]
        When I fill in 'Title' field with 'My sad news story'
        And I fill in 'Body' field with 'Here is bodytext if a long sad news article'
        And I attach an image-file
        And I click on 'Create Article'
        And I should be redirected to the 'landing' page
        Then there should be a Article titled 'My sad news story' in the database
        And I should see 'Article successfully created'
        And I should see 'My sad news story'
        And I should see the 'sad.png' image
