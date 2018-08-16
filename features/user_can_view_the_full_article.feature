Feature: User can view the full article
     As a visitor,
    In order to read the full article,
    I would like to be able to access the article page.

    Background:
        Given the following articles exist
        | title          | body                                                             | author          | date   |
        | This is so sad | A recent report suggest that news are mostly sad. Which is sad.  | Pablo Guera     | 180816 |


    Scenario:
        When I am on the landing page
        And I click on "This is so sad"
        Then I should be on full article page
        And I should see "This is so sad"
        And I should see "A recent report suggest that news are mostly sad. Which is sad"
        And I should see "Pablo Guera"
        And I should see "180816"