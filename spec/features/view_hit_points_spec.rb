feature 'view hit points' do
  scenario 'viewing player1 and player 2 health' do
    sign_in_and_play
    expect(page).to have_content 'Mittens HP: 100'
    expect(page).to have_content 'Dave HP: 100'
  end
end
