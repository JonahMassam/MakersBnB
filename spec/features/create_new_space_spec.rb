feature 'new space page' do
  scenario 'can visit new space page' do
    login_test_user
    visit '/create_new_space'
    expect(page).to have_content("Add new space")
  end

  scenario "can submit new space form" do
    login_test_user
    visit "/create_new_space"
    fill_in("new_space_name", with: "Test Space")
    click_button("submit_button")
    expect(get_test_database_data).to include "Test Space"
  end

  scenario "can add a description to a space" do
    login_test_user
    visit "/create_new_space"
    fill_in("new_space_name", with: "Test Space")
    fill_in("description", with: "Space details")
    click_button("submit_button")
    connection = PG.connect(dbname: 'makersbnb_test')
    result = connection.exec('SELECT * FROM spaces')
    descriptions = result.field_values("description")
    expect(descriptions).to include "Space details"
  end

  scenario "can add a price to a space" do
    login_test_user
    visit "/create_new_space"
    fill_in("new_space_name", with: "Test Space")
    fill_in("description", with: "Space details")
    fill_in("price", with: "100")
    click_button("submit_button")
    connection = PG.connect(dbname: 'makersbnb_test')
    result = connection.exec('SELECT * FROM spaces')
    descriptions = result.field_values("price")
    expect(descriptions).to include "100"
  end

end