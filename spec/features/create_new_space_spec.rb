feature 'new space page' do
  scenario 'can visit new space page' do
    visit '/create_new_space'
    expect(page).to have_content("Add new space")
  end

  scenario "can submit new space form" do
    visit "/create_new_space"
    fill_in("new_space_name", with: "Test Space")
    click_button("submit_button")
    expect(get_test_database_data).to include "Test Space"
  end
end