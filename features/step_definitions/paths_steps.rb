When("I am on the landing page") do
    visit root_path
end

Given("I visit the Create article page") do
    visit new_article_path
end

Then("I should be on {string} page") do 
    article = Article.find_by(:id)
    expect(current_path).to eq article_path(article)
end