FactoryBot.define do
  factory :user do
    sequence(:email) {|u| 'pablo@test.com'}    
    password 'my-password'
    password_confirmation 'my-password'
  end
end
