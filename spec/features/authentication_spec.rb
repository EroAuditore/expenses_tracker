
require 'rails_helper'
RSpec.describe 'Sign in', type: :system do
  before :each do
    #User.delete_all
    User.create(name: 'u_test', email: 'u_test@mail.com', password: 'konohavillage')
  end

  it 'signs me in' do
    visit '/users/sign_in'
    sleep(2)

    within('#new_user') do
      fill_in 'Email', with: 'u_test@mail.com'
      fill_in 'Password', with: 'konohavillage'
    end

    sleep(2)
    click_button 'Log in'

    sleep(2)
    expect(page).to have_content 'Signed in successfully'
  end
end
