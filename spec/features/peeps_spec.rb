require 'rails_helper'
require 'signupmethod'

feature 'peeps page displaying peeps' do
  before do
    Timecop.freeze(Time.local(2020))
  end

  scenario 'peeps can be seen in reverse chronological order' do
      sign_up
      visit '/'
      fill_in "neep", with: "testpeep"
      click_button 'Submit'
      expect(page).to have_content "testpeep 2020-01-01 00:00:00 UTC"
      visit '/'
        Timecop.freeze(Time.local(2021))
      fill_in "neep", with: "testpeep2"
      click_button 'Submit'
      expect(page).to have_content "testpeep2 2021-01-01 00:00:00 UTC"
      # save_and_open_page
  end

  after do
    Timecop.return
  end

end
