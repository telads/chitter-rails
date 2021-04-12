require 'rails_helper'
require 'signupmethod'

feature 'index page' do
  scenario 'only the user can see the index page' do
    sign_up
    expect(page).to have_content("Welcome to the Chitter App!")
  end

  feature 'index page' do
    scenario 'an unregistered user cannot post a peep from the index page' do
      visit '/'
      expect(page).to have_content("Sign up to Chitter!")
    end

    feature 'index page' do
      scenario 'the registered user can post a message' do
        sign_up
        visit '/'
        click_button 'Submit'
        expect(page).to have_content 'Your peep has been posted!'

      end
    end
  end

end
