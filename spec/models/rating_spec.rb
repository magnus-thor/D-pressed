require 'rails_helper'

RSpec.describe Rating, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :value }
  end
end
