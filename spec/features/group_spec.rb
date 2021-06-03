require 'rails_helper'

RSpec.describe 'Expense creation', type: :system do
  before :each do
    User.delete_all
    user1 = User.new(name: 'u_test', email: 'u_test@mail.com', password: 'konohavillage')
    user1.save
  end

  it 'Can create a group' do
    visit '/users/sign_in'

    within('#new_user') do
      fill_in 'Email', with: 'u_test@mail.com'
      fill_in 'Password', with: 'konohavillage'
    end

    sleep(2)
    click_button 'Log in'

    sleep(3)
    visit '/groups/new'
    sleep(5)
    within '.form-inputs' do
      fill_in 'group_name', with: 'Test group'
    end

    sleep(5)
    click_button 'Create Group'

    expect(page).to have_content 'Group was successfully created.'
    sleep(5)
  end
end
