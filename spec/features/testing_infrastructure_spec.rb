feature "Testing infrastructure" do
  scenario "Can run app and check page content" do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end
  scenario "expects players to submit names which appear on the page content" do
    visit("/players")
    fill_in :player_1, :with => "Ian"
    fill_in :player_2, :with => "Javi"
    click_button "submit"

    expect(page).to have_text("Ian Vs. Javi")
  end
end
