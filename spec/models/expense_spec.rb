require 'rails_helper'

RSpec.describe Expense, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:user1) { User.create(name: 'user_tes1', email: 'mail1@mail.com', password: 'password') }
  let(:group1) { user1.groups.create(name: 'expense test') }
  let(:expense1) { Expense.create(name: 'expense test 1', amount: 100, author: user1) }
  let(:expense2) { Expense.create(name: 'expense test 2', amount: 100, author: user1) }
  let(:expense3) { Expense.create(name: 'expense test 3', amount: 100, author: user1) }
  let(:expense4) { Expense.create(name: 'expense test 3', amount: 100, author: user1) }

  describe 'Can be created by user' do
    it 'Has an user without a grup' do
      expect(expense1).to be_valid
    end
  end

  describe 'Can be external if not a group is assigned' do
    it 'Has an user without a group' do
      expense1.save
      expense2.save
      expense3.save
      expect(Expense.external.count).to eq 3
    end
  end

  describe 'Can be separated into external and all' do
    it 'is external if doesnt have group' do
      
      expense1.save
      expense2.save
      expense3.save
      expense4.save
      expense4.groups << group1
      expect(Expense.external.count).to eq 3
    end
  end
  describe 'Can be separated into external and all' do
    it 'My All expenses are saved ' do
      expense1.save
      expense2.save
      expense3.save
      expense4.save
      expect(Expense.all.count).to eq 4
    end
  end
  describe 'Can be added into a group' do
    it 'has been saved first ' do
      expense1.save
      expense1.groups << group1
      expect(expense1).to be_valid
    end
  end
end
