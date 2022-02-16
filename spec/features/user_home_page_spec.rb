feature 'User home page page' do
  scenario 'can visit page' do
    login_test_user
    expect(page).to have_content("Current spaces:")
  end
end