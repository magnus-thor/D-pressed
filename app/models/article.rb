class Article < ApplicationRecord
  belongs_to :user
  
  validates_presence_of :title, :body
  validates_length_of :title, maximum: 200
end
