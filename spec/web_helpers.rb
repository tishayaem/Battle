
def sign_in_and_play
  visit "/"

  fill_in "name1", :with => "Sarah"
  fill_in "name2", :with => "Mic"
  click_button "Submit"

end
