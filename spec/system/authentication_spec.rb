require 'rails_helper'

RSpec.describe 'User Authentication', type: :system do
  fixtures :users

  scenario "with incorrect credentials" do
    visit new_user_session_path

    fill_in "user_email", with: 'petris@email.com'
    fill_in "user_password", with: '12345678'

    click_button "login_button"

    expect(page).to have_current_path(new_user_session_path)
    expect(page).to have_content("Invalid")
  end

  scenario "with correct credentials" do
    visit new_user_session_path

    fill_in "user_email", with: 'user1@email.com'
    fill_in "user_password", with: 'password'

    click_button "login_button"

    expect(page).to have_current_path(profile_path)
  end

  scenario "user sign up with correct credentials" do
    visit new_user_registration_path

    fill_in "user_email", with: 'newuser@email.com'
    fill_in "user_password", with: 'password'
    fill_in "user_password_confirmation", with: 'password'

    click_button "sign_up_button"

    expect(page).to have_current_path(profile_path)
  end
end