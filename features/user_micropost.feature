Feature: User Micropost

    In order to have a micropost
    As an existing user
    I want to see the micropost page

    Scenario: user can create a micropost
        
        When I visit the micropost page
        And fill in the new post
        Then I should have created a micropost

    