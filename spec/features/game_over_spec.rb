feature "Game over" do
  context "if opponents health goes below zero" do
    scenario "redirect to a game_over page" do
      sign_in_and_play
      19.times do
        attack_and_return
      end
      expect(page).to have_content("Game over. Player 1 won")

    end
  end
end
