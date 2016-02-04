# feature 'Switch turns' do
#   context 'showing the current turn' do
#     scenario 'at the start of the game' do
#       sign_in_and_play
#       expect(page).to have_content('Ash\'s turn:')
#     end
#
#     scenario 'after player 1 attacks' do
#       sign_in_and_play
#       attack_and_return
#
#       expect(page).not_to have_content('Ash\'s turn:')
#       expect(page).to have_content('Jessie\'s turn:')
#     end
#   end
# end
