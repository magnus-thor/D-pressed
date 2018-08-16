Then('show me the page') do
    save_and_open_page
end

When("I click on {string}") do |element|
    click_link(element)
  end