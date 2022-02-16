def login_test_user
  visit '/'
  click_link("Click here to login")
  fill_in("user_name", with: "User1")
  click_button("login")
end