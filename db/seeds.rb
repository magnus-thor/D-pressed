User.all.each {|user| user.destroy}
Article.all.each {|article| article.destroy}
Category.all.each {|category| category.destroy}

editor = User.create(email: 'editor@dpressed.se', password: '1234qwer', role: 'editor')
user = User.create(email: Faker::Internet.email, password: Faker::Number.number(10))

economy = Category.create(name: 'Economy')
politics = Category.create(name: 'Politics')
sports = Category.create(name: 'Sports')
science = Category.create(name: 'Science')

editor = User.create(email: 'editor@dpressed.se', password: '1234qwer', role: 'editor')

Article.create(title: Faker::Book.title, 
    body: Faker::Lorem.paragraphs(5),
    user: user,
    category: science)

Article.create(title: Faker::Book.title, 
    body: Faker::Lorem.paragraphs(5),
    user: user,
    category: sports)

Article.create(title: Faker::Book.title, 
    body: Faker::Lorem.paragraphs(5),
    user: user,
    category: politics)

Article.create(title: Faker::Book.title, 
    body: Faker::Lorem.paragraphs(5),
    user: user,
    category: economy)
