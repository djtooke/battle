require 'player'

describe Player do

  subject(:player1) { Player.new('Guybrush') }
  subject(:player2) { Player.new('LeChuck') }

  describe '#name' do
    it 'returns the player name' do
      expect(player1.name).to eq 'Guybrush'
    end
  end

  describe '#hp' do
    it 'returns the hit points' do
      expect(player1.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  describe '#receive_damage' do
    it 'causes a reduction in hp' do
      expect{ player2.receive_damage }.to change {player2.hp}.by(-10)
    end
  end

end
