require 'rails_helper'
require 'signupmethod'

feature 'Visitor signs up' do
  scenario 'via email' do
    sign_up
    expect(User.count).to eq(1)
    user = User.first
    expect(user.first_name).to eq "John"
  end
end
