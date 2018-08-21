require 'rails_helper'

describe ArticlePolicy do
    subject { described_class.new(user, article) }
  
    let(:article) { create(:article) }
  
    context 'user is a basic_user' do
      let(:user) { create(:user, role: 'basic_user') }
  
      it { is_expected.to permit_actions [:index] }
      it { is_expected.to forbid_action [:create, :new, :show] }
    end
        
    context 'user is a subscriber' do    
        let(:user) { create(:user, role: 'subscriber') }
  
        it { is_expected.to permit_actions [:index, :show] }
        it { is_expected.to forbid_action [:create, :new] }
    end
  
    context 'user is an author' do
      let(:user) { create(:user, role: 'author') }
  
      it { is_expected.to permit_actions [:index, :show, :create, :new] }
    end

    context 'user is an editor' do
        let(:user) { create(:user, role: 'editor') }
    
        it { is_expected.to permit_actions [:index, :show, :create, :new] }
    end
end