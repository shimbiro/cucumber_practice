When(/^i go to new micropost page$/) do
 visit microposts_path
end

And(/^fill in the details$/) do
  visit microposts_path
  fill_in 'TextArea', with: 'My Text'
end

And(/^post the details$/) do
	visit microposts_path
	click_button 'Post'
  
end

Then(/^micropost should be created$/) do
	
  expect(Micropost.last.text).to eq 'My Text'
end
