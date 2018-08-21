require 'rails_helper'

RSpec.describe ArticlePolicy do
    subject { described_class.new(user, article) }
    let(:article) { create(:article) }

    context 'user is a basic_user' do
        let(:user) { create(:user, email: 'new@email.dk', role: 'basic_user') }

        it { is_expected.to permit_actions [:index] }
        it { is_expected.to forbid_actions [:create] }
    end

    context 'user is a subscriber' do
        let(:user) { create(:user, email: 'new@email.dk', role: 'subscriber') }

        it { is_expected.to permit_actions [:index, :show] }
        it { is_expected.to forbid_actions [:create] }
    end

    context 'user is a author' do
        let(:user) { create(:user, email: 'new@email.dk', role: 'author') }

        it { is_expected.to permit_actions [:index, :show, :create] }
    end

    context 'user is a editor' do
        let(:user) { create(:user, email: 'new@email.dk', role: 'editor') }

        it { is_expected.to permit_actions [:index, :show, :create] }
    end


end
