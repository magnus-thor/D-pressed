class Article < ApplicationRecord
  belongs_to :user
  has_many :ratings
  
  validates_presence_of :title, :body
  validates_length_of :title, maximum: 200
end

def rated_by?(resource)
  self.ratings.where(user: resource).any?
end