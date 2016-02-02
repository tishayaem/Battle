require 'player'

describe Player do
  let(:name) { 'Kenneth' }
  subject(:player) { described_class.new(name) }

  it 'returns the player name' do
    expect(player.name).to eq name
  end
end
