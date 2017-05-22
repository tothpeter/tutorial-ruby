class Scoreboard
  attr_reader :score

  def initialize team_name
    @team_name = team_name

    @score = build_score
  end

  def add_run inning:
    @score[@team_name][inning] += 1
  end

  def get_total_runs
    @score[@team_name].values.reduce :+
  end

  private

  def build_score
    {
      @team_name => {
        1 => 0,
        2 => 0,
        3 => 0,
        4 => 0,
        5 => 0,
        6 => 0,
        7 => 0,
        8 => 0,
        9 => 0
      }
    }
  end
end
