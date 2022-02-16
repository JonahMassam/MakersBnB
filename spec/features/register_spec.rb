feature "enable to user to sign up" do
  scenario "navigate to sign up page from button" do
    visit ('/Register')
    expect(page).to have_content "Register"
  end

  scenario "The user submits name" do
    visit "/"
    click_link "Click here to register"
    fill_in("user_name", with: "Dave")
    click_button('Submit')
    expect(page).to have_content "Login"
  end
end