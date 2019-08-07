require 'player'

describe Player do
  subject(:name_1) { Player.new("Name_1")}

  describe '#name' do

    it "returns the name of the player" do

      expect(name_1.name).to eq "Name_1"
    end
  end
end
