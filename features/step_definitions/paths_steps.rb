When("I am on the landing page") do
    visit root_path
end

Given("I visit the Create article page") do
    visit new_article_path
end