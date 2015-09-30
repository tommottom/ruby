class BowlingGame
  def initialize
    @score = 0
    @spare = false
    @last_pins = 0
    @shot_no = 1 #フレームの何投目かを記録する@shot_no
    @strike_bonus_count = 0 #ストライクの残ボーナス回数を管理する
    @double_bonus_count = 0 #@double_bonus_countで連続ストライクの残ボーナス回数を管理する
  end

  def record_shot(pins)
     @score += pins
     calc_spare_bonus(pins)
     calc_strike_bonus(pins)
     @last_pins = pins
     proceed_next_shot
  end

  def score
     @score
  end

  private
  def calc_spare_bonus(pins)
    if @spare
      @score += pins
      @spare = false
    end
    if @shot_no == 2 && @last_pins + pins == 10 #2投目の時だけスペア判定させる
      @spare = true
    end
  end

  def calc_strike_bonus(pins)
    if @strike_bonus_count > 0
      @score += pins
      @strike_bonus_count -= 1
    end

    if @double_bonus_count > 0
      @score += pins
      @double_bonus_count -= 1
    end
    if pins == 10
      if @strike_bonus_count == 0
        @strike_bonus_count = 2
      else
        @double_bonus_count = 2 #ストライク = pins == 10の時の条件を二つ書く。
      end
    end
  end

  def proceed_next_shot
    if @shot_no == 1 #@shot_noを更新
      @shot_no = 2
    else
      @shot_no = 1
    end
  end
end
