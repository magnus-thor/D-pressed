class User < ApplicationRecord
  has_many :articles
  has_many :ratings
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
