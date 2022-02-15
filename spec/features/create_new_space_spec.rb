feature 'new space page' do
  scenario 'can visit new space page' do
    visit '/create_new_space'
    expect(page).to have_content("Test")
  end

  scenario "can submit new space form" do
    visit "/create_new_space"
    fill_in("space_name", with: "Test Space")
    #expect database to have entry "Test Space"
  end
end