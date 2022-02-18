feature "Request available space" do
  scenario "can visit page" do
    login_test_user
    visit ('/request_available_space')
    expect(page).to have_content "Hello"
  end

#  scenario "can submit a date" do
#    login_test_user
#    visit ('/request_available_space')
#    fill_in("request_date", with: "2022-03-14" )
#    click_button("submit")
#    expect(page).to have_content "Here are the available space on that date:"
  end

end