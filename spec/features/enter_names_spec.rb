
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
feature 'Show turn' do
  scenario 'Show it\'s player1 turn' do
    sign_in_and_play
    expect(page).to have_content 'Dave to the battlefield'

  end
end
