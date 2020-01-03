class Tennis
  POINTS_TO_SCORE = %w[Love Fifteen Thirty Fourty].freeze

  def initialize
    @player_one_points = 0
    @player_two_points = 0
  end

  def win_point(player)
    return @player_one_points -= 1 if player_one_lose_advantage?(player)
    return @player_two_points -= 1 if player_two_lose_advantage?(player)

    player_one?(player) ? @player_one_points += 1 : @player_two_points += 1
  end

  def score
    return 'Deuce' if deuce?
    return output_advantage if advantage?

    "#{POINTS_TO_SCORE[@player_one_points]}-#{POINTS_TO_SCORE[@player_two_points]}"
  end

  private

  def player_one?(player)
    player == :player_one
  end

  def player_two?(player)
    player == :player_two
  end

  def deuce?
    @player_one_points == 3 && @player_two_points == 3
  end

  def advantage?
    @player_one_points.between?(3, 4) && @player_two_points.between?(3, 4)
  end

  def player_one_lose_advantage?(point_winner)
    player_two?(point_winner) && @player_one_points == 4
  end

  def player_two_lose_advantage?(point_winner)
    player_one?(point_winner) && @player_two_points == 4
  end

  def output_advantage
    @player_one_points == 4 ? 'Advantage Player One' : 'Advantage Player Two'
  end
end
