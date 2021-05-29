require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user1) { User.create(name: 'user_tes1', email: 'mail1@mail.com', password: 'password') }

  describe 'Can be created by user' do
    it 'Has and user' do
      g = user1.groups.new(name: 'Test group')
      expect(g).to be_valid
    end
    it 'Is invalid if user is not present' do
      expect(Group.create(name: 'Test group')).to_not be_valid
    end
  end
end
