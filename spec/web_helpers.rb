def sign_in_and_play
  visit "/"

  fill_in "p1_name", with: "Player 1"
  fill_in "p2_name", with: "Player 2"
  click_button "Submit"
end

def attack_and_return
  click_button 'Attack!'
  click_link 'Back to battle'
end
