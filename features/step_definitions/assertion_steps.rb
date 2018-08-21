Then("I should see {string}") do |content|
    expect(page).to have_content content
end

And("there should be a Article titled {string} in the database") do |expected_title|
    expect(Article.last.title).to eq expected_title
end

Given("the date is {string}") do |date_string|
    date = Date.parse(date_string)
    Timecop.travel(date)
  end

After do
    Timecop.return
end
When("I attach an image-file") do
    attach_file('article_image', "#{::Rails.root}/spec/fixtures/sad.png")
end

Then("I should see the {string} image") do |file_name|
    expect(page).to have_selector "img[src$='#{file_name}']"
end
  
