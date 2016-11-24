FactoryGirl.define do
  factory :user do
    
    sequence(:email) { |n| "email#{n}@email.com"} 
    password "secretsecret" 

    # factory :notice do
    # 	# notice 'Account successfully created'
    # end
   end
end
