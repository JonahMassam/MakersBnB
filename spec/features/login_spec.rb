feature 'login page' do
  scenario 'can visit page' do
    visit '/'
    click_link("Click here to login")
    expect(page).to have_content("Login")
  end

end