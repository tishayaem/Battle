require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:opponent) { double :player }

  describe '#attack' do
    it { is_expected.to respond_to(:attack) }

    it 'deals damage to opponent' do
      expect(opponent).to receive(:receive_damage)
      game.attack(opponent)
    end
  end
end
