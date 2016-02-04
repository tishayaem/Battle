
def sign_in_and_play
  visit "/"
  fill_in :name1, :with => "sarah"
  fill_in :name2, :with => "mic"
  p page.body
  save_and_open_page
  click_button "Submit"
end
