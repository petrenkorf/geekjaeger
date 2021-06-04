require 'rails_helper'

RSpec.describe 'User Profile', type: :system do
  scenario "user is not authenticated" do
    visit profile_path

    expect(page).to have_current_path(new_user_session_path)
  end
end