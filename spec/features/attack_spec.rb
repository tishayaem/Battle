# I want to attack Player 2, and I want to get a confirmation

feature "attack player" do

  scenario "User2 attacks player 1" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_text("sarah has attacked mic!")
  end

  scenario "reduce HP" do
    sign_in_and_play
    click_button "Attack!"
    click_link "Back to battle"
    expect(page).to have_text("9")
  end

end

# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
