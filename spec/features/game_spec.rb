describe Game do
  let(:game) { described_class.new }
  let(:player) { double("Player")}

  describe "#attack" do
    it "allows player to attack" do
      expect(player).to receive(:receive_damage)
      subject.attack(player)
    end
  end

end
