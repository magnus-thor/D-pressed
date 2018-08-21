Feature: Author can attach an image to the article 
    As an Author,
    In order to provide more value to my readers,
    I would like to be able to attach an image to the article.

    Background:
        Given the following article exists
        | title          | body                                                             | 
        | This is so sad | A recent report suggest that news are mostly sad. Which is sad.  |

        Scenario:
            When I fill in 'Title' field with 'My sad news story'
            And I fill in 'Body' field with 'Here is bodytext if a long sad news article'
            And I attached an image
            And I click on 'Create Article'
            Then I wait 1 second
            And I should be redirected to the 'landing' page
            Then there should be a Article titled 'My sad news story' in the database
            And I should see 'Article successfully created'
            And I should see 'My sad news story'
            And I should see 'Published on: 2018-08-19'