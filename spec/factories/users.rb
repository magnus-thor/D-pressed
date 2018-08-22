FactoryBot.define do
  factory :user do
    sequence(:email) {|u| "#{u}jonnh@test.com"}    
    password 'my-password'
    password_confirmation 'my-password'
    role 0
  end
end