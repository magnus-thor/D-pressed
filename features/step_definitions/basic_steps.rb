Then('show me the page') do
    save_and_open_page
end

When("I fill in {string} field with {string}") do |field, content|
    fill_in field, with: content
end

When("I click {string} button") do |button|
    click_button button
end