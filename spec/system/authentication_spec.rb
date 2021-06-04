require 'rails_helper'

RSpec.describe 'User login', type: :system do
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

    fill_in "user_email", with: 'petris@email.com'
    fill_in "user_password", with: '12345678'

    click_button "login_button"

    expect(page).to have_current_path(profile_url_path, url: true)
  end
end