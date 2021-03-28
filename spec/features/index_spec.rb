require 'rails_helper'

feature 'index page' do
  scenario 'only the user can see the index page' do
    visit '/sign-up'
    fill_in "user_first_name", with: "John"
    fill_in "user_last_name", with: "Doe"
    fill_in "user_email", with: "john@test.com"
    fill_in "user_password", with: "test123"
    fill_in "user_password_confirmation", with: "test123"
    click_button "Create account"
    visit '/'
    expect(page).to have_content("Welcome to the Chitter App!")
  end

  feature 'index page' do
    scenario 'an unregistered user cannot post a peep from the index page' do
      visit '/'
      expect(page).to have_content("Sign up to Chitter!")
    end

    feature 'index page' do
      scenario 'the registered user can post a message' do
        visit '/sign-up'
        fill_in "user_first_name", with: "John"
        fill_in "user_last_name", with: "Doe"
        fill_in "user_email", with: "john@test.com"
        fill_in "user_password", with: "test123"
        fill_in "user_password_confirmation", with: "test123"
        click_button "Create account"
        visit '/'
        click_button 'Submit'
        expect(page).to have_content 'Your peep has been posted!'

      end
    end
  end

end
