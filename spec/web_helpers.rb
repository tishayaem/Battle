def sign_in_and_play
  visit('http://localhost:4567')
  fill_in('Player1', with: 'TestName')
  fill_in('Player2', with: 'Testname2')
  click_button('Submit')
end
