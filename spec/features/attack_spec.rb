# I want to attack Player 2, and I want to get a confirmation

feature "attack player 2" do
  scenario "User2 attacks player 1" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_text("Sarah has attacked Mic!")
  end
end
