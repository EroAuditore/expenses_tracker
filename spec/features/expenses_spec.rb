require 'rails_helper'

RSpec.describe 'Expense creation', type: :system do
  before :each do
    User.delete_all
    user1 = User.new(name: 'u_test', email: 'u_test@mail.com', password: 'konohavillage')
    user1.save
    user1.groups.create(name: 'expense test')
    user1.groups.create(name: 'expense test 2')
  end

  it 'Can add a friend' do
    visit '/users/sign_in'

    within('#new_user') do
        fill_in 'Email', with: 'u_test@mail.com'
        fill_in 'Password', with: 'konohavillage'
    end
  
    sleep(2)
    click_button 'Log in'
  
    sleep(3)
    visit '/expenses/new'
    sleep(5)
    within '.form-inputs' do
        fill_in 'expense_name', with: 'Test expense'
        fill_in 'expense_amount', with: '100'
        find(:css, "#expense_group_id").find(:option, 'expense test').select_option
        
    end

    sleep(5)
    click_button 'Create Expense'
    
    expect(page).to have_content 'Expense was successfully created.'
    sleep(5)
  end

end
