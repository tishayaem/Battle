require 'game'

describe Game do
  subject(:game) { described_class.new(p1, p2) }
  player_1_name = 'Ash'
  player_2_name = 'Jessie'
  player_1_hp   = 100
  player_2_hp   = 100
  let(:p1) { double :player, name: player_1_name, hit_points: player_1_hp }
  let(:p2) { double :player, name: player_2_name, hit_points: player_2_hp }

  describe '#current_player_number' do
    it 'returns the number of the current player' do
      expect(game.current_player_number).to eq described_class::FIRST_PLAYER
    end
  end

  describe '#player' do
    context 'when passed 1' do
      it 'returns the first player' do
        expect(game.player(1)).to be p1
      end
    end

    context 'when passed 2' do
      it 'returns the second player' do
        expect(game.player(2)).to be p2
      end
    end

    context 'when passed an invalid player number' do
      it 'raises an error' do
        message = 'Please specify a valid player number'
        expect { game.player(3) }.to raise_error(message)
      end
    end

    context 'when passed a negative value' do
      it 'raises an error' do
        message = 'Please specify a valid player number'
        expect { game.player(-3) }.to raise_error(message)
      end
    end

    context 'when passed a non-numeric value' do
      it 'raises an error' do
        message = 'Please specify a valid player number'
        expect { game.player('invalid') }.to raise_error(message)
      end
    end
  end

  describe '#current_player' do
    it 'returns the current player for each turn' do
      expect(game.current_player).to eq \
        game.player(described_class::FIRST_PLAYER)
    end
  end

  describe '#opponent_player' do
    it 'returns a player that is not the current player' do
      expect(game.opponent_player).not_to eq \
        game.player(described_class::FIRST_PLAYER)
    end
  end

  describe '#attack' do
    it 'deals damage to opponent' do
      expect(game.opponent_player).to receive(:receive_damage)
      game.attack(game.opponent_player)
    end
  end

  describe '#switch_turn' do
    it 'changes the current player number' do
      game.switch_turn
      expect(game.current_player_number).not_to eq \
        described_class::FIRST_PLAYER
    end
  end
end
