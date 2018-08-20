require 'faker'

user = User.new(email: Faker::Internet.email, password: Faker::Number.number(10))

10.times do
    Article.create!(title: Faker::RickAndMorty.quote, 
        body: Faker::Lorem.paragraphs(5),
        user: user)
end
