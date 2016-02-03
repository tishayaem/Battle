describe Player do
  subject(:sarah) { Player.new("Sarah") }

  describe '#name' do
    it "returns the player's name" do
      expect(sarah.name).to eq "Sarah"
    end
  end
end
