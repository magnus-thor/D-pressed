Given("the following article exists") do |table|
    table.hashes.each do |article|
        Article.create!(article)
       end
  end