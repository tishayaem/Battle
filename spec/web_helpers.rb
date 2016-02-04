def sign_in_and_play
  visit "/"

  fill_in "p1_name", with: "Sarah"
  fill_in "p2_name", with: "Mic"
  click_button "Submit"
end
