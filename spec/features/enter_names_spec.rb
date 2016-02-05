feature "Players sign in" do
  scenario "displays player names" do
    sign_in_and_play
    expect(page).to have_text("Player 1 [100hp] Player 2 [100hp]")
  end
end
