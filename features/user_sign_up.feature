Feature: Sign up page
Scenario: user can sign up
	Given I am a guest user
	When I visit sign up page
	And I fill in the correct information
	Then I should be signed up

	Scenario: cannot sign up twice
	  Given  am an existing user
	  When I visit sign up page
	  And I fill in the correct information
	  Then I can not register again

	  Scenario: cannot sign up with invalid info
	    Given  I am a guest user
       When I visit sign up page
	  And I fill in the correct information
	  Then I can not register again
    
	