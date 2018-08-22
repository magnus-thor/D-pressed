class User < ApplicationRecord
  has_many :articles
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

def become_subscriber
  if @user.basic_user?
    @user.subscriber!, notice: 'You have succesfully subscribed to D-pressed'
  else
    @user.subscriber
    notice: 'You are already subscribed'
  end
end
