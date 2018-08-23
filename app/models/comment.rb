class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user

  validate_presence_of :content
end
