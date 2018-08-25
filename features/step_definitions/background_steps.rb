Given("the following article exists/exist") do |table|
    table.hashes.each do |article_hash|
        create(:article, article_hash)
    end
end

Given("the following user(s) exist/exists") do |table|
    table.hashes.each do |user_hash|
        create(:user, user_hash)
    end
end

Given("the following categories exist") do |table|
    table.hashes.each do |user_hash|
        create(:category, user_hash)
    end
end