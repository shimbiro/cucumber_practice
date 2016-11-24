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

  expect(User.last.email).to eq 'my@email.com'

  expect(page).not_to have_content('Email already exists')

  expect(page).to have_content :error_explanation
  # expect(page).to have_content("Email can't be blank")
  # expect(page).to have_content("Username can't be blank")
  # expect(page).to have_content("Password can't be blank")
  # expect(page).to have_content("Password confirm can't be blank")

  
  
  

end

Given(/^am an existing user$/) do
	visit login_path
	fill_in 'Email', with: 'my@email.com'
	fill_in 'Password', with: 'qwerty'
	# expect(User.last.email).to eq 'my@email.com'
	# expect(page).to have_content :error_explanation
	# FactoryGirl.create(:user, email: 'my@email.com')
end
Then(/^I can not register again$/) do
  
end
