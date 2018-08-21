require 'rails_helper'

RSpec.describe Rating, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :value }
    it { is_expected.to have_db_column :article_id }
    it { is_expected.to have_db_column :user_id  }


  end
end
