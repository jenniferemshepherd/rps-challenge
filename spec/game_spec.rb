require 'game'

describe Game do
  let(:computer) { double :computer }
  let(:player) { double :player }
  subject(:game) { described_class.new(player, computer) }

  describe '#rps' do
    it 'returns a player win' do
      allow(computer).to receive(:makes_choice).and_return("ROCK")
      allow(computer).to receive(:choice).and_return("ROCK")
      allow(player).to receive(:choice).and_return("PAPER")
      expect(game.rps).to eq "Player wins"
    end

    it 'returns a computer win' do
      allow(computer).to receive(:makes_choice).and_return("ROCK")
      allow(computer).to receive(:choice).and_return("ROCK")
      allow(player).to receive(:choice).and_return("SCISSORS")
      expect(game.rps).to eq "Computer wins"
    end

    it 'returns a draw' do
      allow(computer).to receive(:makes_choice).and_return("ROCK")
      allow(computer).to receive(:choice).and_return("ROCK")
      allow(player).to receive(:choice).and_return("ROCK")
      expect(game.rps).to eq "DRAW"
    end
  end

end
