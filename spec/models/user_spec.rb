require 'rails_helper'

RSpec.describe User, type: :model do
  describe "DB table" do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :role }
  end


  describe 'Associations' do  
    it {is_expected.to have_many :articles}
  end

  describe "Factory" do
    it "for :user is valid" do
      expect(create(:user)).to be_valid
    end
  end

  describe 'User roles' do
    let(:basic_user) {create :user, email: 'basic_user@test.se', role: :basic_user}
    let(:subscriber) {create :user, email: 'author@test.se', role: :author}

    it 'basic_user responds true if role is basic_user' do
      expect(basic_user.basic_user?).to eq true
    end

    it 'basic_user responds false if role is not basic_user' do
      expect(subscriber.basic_user?).to eq false
    end
  end
end
