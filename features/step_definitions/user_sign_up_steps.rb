Given(/^I am a guest user$/) do
end

When(/^I visit sign up page$/) do
	visit signup_path
end

When(/^I fill in the correct information$/) do
	fill_in 'Email', with: 'my@email.com'
	fill_in 'user_username', with: 'myname'
	fill_in 'Password', with: 'qwerty'
	fill_in 'Password Confirmation', with: 'qwerty'
	click_button 'Sign Up!'
end

Then(/^I should be signed up$/) do
  expect(page).to have_content('Sign Up!')
end

Given(/^am an existing user$/) do
  visit signup_path
end

Then(/^I can not register again$/) do
  
end


