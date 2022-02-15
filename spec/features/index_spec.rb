feature 'Visiting the home page' do
  scenario 'User can see the page title' do
    visit('/')
    expect(page).to have_content "Welcome to Makers B&B"
  end
end
