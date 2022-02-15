feature "enable to user to sign up" do
  scenario "navigate to sign up page from button" do
    visit ('/Register')
    expect(page).to have_content "Register"
  end
end