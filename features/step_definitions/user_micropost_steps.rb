# Given(/^I am an logged in user$/) do
#   visit login_path
#   fill_in 'Email', with: 'my@email.com'
#   fill_in 'Password', with: 'myname'
#   # FactoryGirl.create(:micropost, user: user, content: "Foo")
#   click_button 'Log in' 
# end

When(/^I visit the micropost page$/) do
  visit microposts_path
end

And(/^fill in the new post$/) do
  visit microposts_path
  fill_in 'micropost[content]', with: ''
  click_button 'Post'
  expect(page).to have_content :required
  
end

Then(/^I should have created a micropost$/) do
  # FactoryGirl.create(:micropost, content: "MyText")
  visit microposts_path
  expect(page).to have_content('Micropost created')
end
