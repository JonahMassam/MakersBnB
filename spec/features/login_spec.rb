feature 'login page' do
  scenario 'can visit page' do
    visit '/'
    click_link("Click here to login")
    expect(page).to have_content("Login")
  end

  scenario 'can login' do
    visit '/'
    click_link("Click here to login")
    fill_in("user_name", with: "Jonah")
    click_button("login")
    expect(page).to have_content "Hello Jonah!"
  end

end