feature "Player attacks opponent" do
  scenario "confirms attack has occurred" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_text("Player 1 has attacked Player 2!")
  end

  scenario "deals damage to the opponent" do
    sign_in_and_play
    click_button "Attack!"
    click_link "Back to battle"
    expect(page).to have_text("90hp")
  end
end
