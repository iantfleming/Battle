feature "enter names" do
  scenario "submitting names" do
    visit("/")
    fill_in :player_1, with: "Ian"
    fill_in :player_2, with: "Javi"
    click_button "Submit"
    expect(page).to have_content "Ian vs. Javi"
  end
end
