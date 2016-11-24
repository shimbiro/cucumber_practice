require 'capybara/rails'

Given(/^I am a guest user$/) do
	
end

When(/^I visit sign up page$/) do
	visit signup_path
end

When(/^I fill in the correct information$/) do
	fill_in 'Email', with: 'my@email.com'
	fill_in 'Username', with: 'myname'
	fill_in 'Password', with: 'qwerty'
	fill_in 'Password Confirmation', with: 'qwerty'
	click_button 'Sign Up!'
end

Then(/^I should be signed up$/) do
	
  expect(page).to have_content('Account successfully created')
  expect(form_for.error_explanation).to eq "Email can't be blank"
  expect(page).to have_content("Username can't be blank")
  expect(page).to have_content("Password can't be blank")
  expect(page).to have_content("Password confirm can't be blank")
  expect(User.last.email).to eq 'my@email.com'
  
  
end

Given(/^am an existing user$/) do
	FactoryGirl.create(:user, email: 'my@email.com')
end
Then(/^I can not register again$/) do
  
end
