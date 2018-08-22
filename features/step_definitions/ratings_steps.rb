Then("I click {string} on rating") do |value|
    within('#rating') do
        click_on value
    end
end
  
Then("the average rating for {string} should be {string}") do |string, string2|

end