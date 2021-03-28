require 'rails_helper'

feature 'peeps page displaying peeps' do
  before do
    Timecop.freeze(Time.local(2020))
  end

  scenario 'peeps can be seen in reverse chronological order' do
      visit '/sign-up'
      fill_in "user_first_name", with: "John"
      fill_in "user_last_name", with: "Doe"
      fill_in "user_email", with: "john@test.com"
      fill_in "user_password", with: "test123"
      fill_in "user_password_confirmation", with: "test123"
      click_button "Create account"
      visit '/'
      fill_in "neep", with: "testpeep"
      click_button 'Submit'
      expect(page).to have_content "testpeep 2020-01-01 00:00:00 UTC"
      visit '/'
        Timecop.freeze(Time.local(2021))
      fill_in "neep", with: "testpeep2"
      click_button 'Submit'
      expect(page).to have_content "testpeep2 2021-01-01 00:00:00 UTC"
      save_and_open_page
  end

  after do
    Timecop.return
  end

end
