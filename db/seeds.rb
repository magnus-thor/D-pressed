User.all.each {|user| user.destroy}
Article.all.each {|article| article.destroy}

editor = User.create(email: 'editor@dpressed.se', password: '1234qwer', role: 'editor')
user = User.create(email: Faker::Internet.email, password: Faker::Number.number(10))

10.times do
    Article.create(title: Faker::Book.title, 
        body: Faker::Lorem.paragraphs(5),
        user: user)
end
