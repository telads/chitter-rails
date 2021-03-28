require 'rails_helper'

feature 'peeps page displaying peeps' do
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
    fill_in "neep", with: "testpeep2"
    click_button 'Submit'
    expect(page).to have_content 'Your peep has been posted!'
    expect(page).to have_content "Your peep has been posted!\ntestpeep2 2021-03-28"
    expect(page).to have_content "Your peep has been posted!\ntestpeep2 2021-03-28"
  end
end
