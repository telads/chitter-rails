
def sign_up

  visit '/sign-up'
  fill_in "user_first_name", with: "John"
  fill_in "user_last_name", with: "Doe"
  fill_in "user_email", with: "john@test.com"
  fill_in "user_password", with: "test123"
  fill_in "user_password_confirmation", with: "test123"
  click_button "Create account"

end
