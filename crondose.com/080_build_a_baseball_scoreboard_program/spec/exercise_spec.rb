require './exercise'

describe Scoreboard do
  before do
    @scoreboard = Scoreboard.new 'KalinaTech'
  end
  it 'should properly calculate the total score for a team' do
    @scoreboard.add_run inning: 1
    @scoreboard.add_run inning: 7
    @scoreboard.add_run inning: 9

    expect(@scoreboard.get_total_runs).to eq(3)
  end

  it 'should generate a hash with the total runs scored each inning' do
    @scoreboard.add_run inning: 3
    @scoreboard.add_run inning: 3
    @scoreboard.add_run inning: 5
    @scoreboard.add_run inning: 8

    expect(@scoreboard.score).to eq({"KalinaTech"=>{1=>0, 2=>0, 3=>2, 4=>0, 5=>1, 6=>0, 7=>0, 8=>1, 9=>0}})
  end

  it 'should generate a hash with the innings and 0 values for the runs each inning when a Scoreboard is created' do
    expect(@scoreboard.score).to eq({"KalinaTech"=>{1=>0, 2=>0, 3=>0, 4=>0, 5=>0, 6=>0, 7=>0, 8=>0, 9=>0}})
  end
end
