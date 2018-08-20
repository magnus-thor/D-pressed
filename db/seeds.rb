require 'faker'

user = User.new(email: Faker::Internet.email, password: Faker::Number.number(10))

10.times do
    Article.create!(title: Faker::Book.title, 
        body: Faker::Lorem.paragraphs(5),
        user: user)
end
