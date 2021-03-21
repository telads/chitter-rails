require 'rails_helper'

feature 'Visitor signs up' do
  scenario 'via email' do
    visit '/sign-up'
    expect(page).to have_content("First name")
  

  end
end
