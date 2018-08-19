Then("I should see {string}") do |content|
    expect(page).to have_content content
end

And("there should be a Article titled {string} in the database") do |expected_title|
    expect(Article.last.title).to eq expected_title
end

Given("the date is {string}") do |date_string|
    date = Date.parse(date_string)
    Timecop.freeze(date)
  end