describe Player do
  subject(:player1) { Player.new("player1")}
  subject(:player2) { Player.new("player2")}  

  describe 'hit_points' do
    it 'has default HPs' do
      expect(player1.hit_points).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end

  describe '#name' do
    it "returns the name of the player" do
      expect(player1.name).to eq("player1")
    end
  end

  describe "#attack" do
    it "allows player to attack" do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  describe '#receive_damage' do
    it 'lowers players HPs' do
      expect { player2.receive_damage }.to change { player2.hit_points }.by(-10)
    end
  end

end
