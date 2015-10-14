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

  def frame_score(frame_no)
    0
  end

  private

  def calc_spare_bonus(pins)
    if @spare
      @score += pins
      @spare = false
    end
    if spare?(pins)
      @spare = true
    end
  end

  def spare?(pins)
    @shot_no == 2 && @last_pins + pins == 10 #2投目の時だけスペア判定させる
  end

  def calc_strike_bonus(pins)
    add_strike_bonus(pins)
    add_double_bonus(pins)
    if strike?(pins)
      recognize_strike_bonus
    end
  end

  def add_strike_bonus(pins)
    if @strike_bonus_count > 0
      @score += pins
      @strike_bonus_count -= 1
    end
  end

  def add_double_bonus(pins)
    if @double_bonus_count > 0
      @score += pins
      @double_bonus_count -= 1
    end
  end

  def strike?(pins)
    pins == 10
  end

  def recognize_strike_bonus
    if @strike_bonus_count == 0
      @strike_bonus_count = 2
    else
      @double_bonus_count = 2 #ストライク = pins == 10の時の条件を二つ書く。
    end
  end

  def proceed_next_shot
    if @shot_no == 1 && @strike_bonus_count < 2  && @double_bonus_count < 2
      @shot_no = 2
    else
      @shot_no = 1
    end
  end
end
