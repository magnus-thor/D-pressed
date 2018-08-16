Given("the following article exists") do |table|
    table.hashes.each do |hash|
    FactoryBot.create(:article, hash)
    end
end