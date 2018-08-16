Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then('there should be a new article in the database') do
    expect(Article.count).to eq 1
end