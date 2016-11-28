Feature: As a guest 

        I want to create a micropost

    Scenario:sucessfully create a micropost
             When I go to new micropost page
             And fill in the details
             And post the details
             Then micropost should be created

    