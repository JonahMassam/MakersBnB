feature 'User home page page' do
  scenario 'can visit page' do
    login_test_user
    expect(page).to have_content("Current spaces:")
  end

  #scenario "can add an available date" do
    #login_test_user
    #fill_in("date", with: "2022-02-20")
    #click_button("submit")
 # end

end