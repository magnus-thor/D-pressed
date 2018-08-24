Then("I click {string} on rating") do |value|
    within('#rating') do
        click_on value
    end
end

#Then("I should see the notice {string}") do |expected_text|
 #   notice = page.evaluate_script("document.querySelector('.notice');").text
  #  expect(notice).to eq expected_text
#end