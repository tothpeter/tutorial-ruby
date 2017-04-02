require './exercise'

describe Exercise do
  describe ".lineup_generator" do
    it "builds a list driven lineup" do
      players = [ 'Player A', 'Player B', 'Player C' ]

      lineup = Exercise.lineup_generator(players) { |rank, player| "#{rank}. #{player}" }

      expect(lineup).to eq(["1. Player A", "2. Player B", "3. Player C"])
    end
  end
end
