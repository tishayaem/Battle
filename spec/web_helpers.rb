def sign_in_and_play
  visit "/"

  fill_in "p1_name", with: "Ash"
  fill_in "p2_name", with: "Jessie"
  click_button "Submit"
end

def attack_and_return
  visit '/play'

  click_button 'Attack!'
  click_link 'Back to battle'
end
