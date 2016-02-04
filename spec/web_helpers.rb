
def sign_in_and_play
  visit "/"

  fill_in @player1, :with => "sarah"
  fill_in @player2, :with => "mic"
  click_button "Submit"

end
