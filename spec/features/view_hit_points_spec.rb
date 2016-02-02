feature 'view hit points' do
  scenario 'player 1 viewing player 2' do
    sign_in_and_play
    expect(page).to have_content 'Mittens HP: 100'
  end
end
