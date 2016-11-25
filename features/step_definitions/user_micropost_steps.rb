When(/^i go to new micropost page$/) do
 visit microposts_path
end

And(/^fill in the details$/) do
  
  fill_in 'Content', with: 'MyText'
end

And(/^post the details$/) do

	click_button 'Post'
  
end

Then(/^micropost should be created$/) do
	
  expect(Micropost.last.text).to eq 'MyText'
end
