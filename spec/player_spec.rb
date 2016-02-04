require 'player'

describe Player do
  subject(:sarah) { Player.new("Sarah") }

  describe '#name' do
    it "returns the player's name" do
      expect(sarah.name).to eq "Sarah"
    end
  end

  describe '#reduce' do
    it "reduces HP by 1" do
      expect { sarah.receive_damage }.to change { sarah.hit_points }.by(-1)
    end
  end

end
