When("I am on the {string} page") do |page_name|
    visit page_path(page_name)
end

Given("I visit the Create article page") do
    visit new_article_path
end



def page_path(path)
    if path == 'This is so sad'
        article_title = Article.find_by(title: path)
        article_path(article_title)
        else
        root_path
    end
end

When("I am on the landing page") do
    visit root_path
end