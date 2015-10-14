require 'minitest/autorun'
require_relative 'bowling_game'

class BowlingGametest < Minitest::Unit::TestCase

  def setup
    @game = BowlingGame.new
  end

  def test_全ての投球がガター
    record_mamy_shots(20, 0)
    assert_equal 0, @game.score
  end

  def test_全ての投球が1ピンだけ倒れた
    record_mamy_shots(20, 1)
    assert_equal 20, @game.score
  end

  def test_スペアをとると次の投球のピン数を加算
    @game.record_shot(3)
    @game.record_shot(7) #10 + 4 = 14 スペアなので投球後の得点(4)がボーナス点として加算
    @game.record_shot(4)
    record_mamy_shots(17, 0)
    assert_equal 18, @game.score

  end

  def test_直前の投球との合計が10ピンでもフレーム違いはスペアではない
    @game.record_shot(2)
    @game.record_shot(5)
    @game.record_shot(5) #前の投球との合計は１０だけどスペアではない
    @game.record_shot(1)
    record_mamy_shots(16, 0)
    assert_equal 13, @game.score
  end

  def test_ストライクをとると次の2投球分のピン数を加算
    @game.record_shot(10) #10 + 3 + 3 = 16 ストライクの為、次の2投球分のピン数を加算
    @game.record_shot(3)
    @game.record_shot(3)
    @game.record_shot(1)
    record_mamy_shots(15, 0) #全体では19投になる
    assert_equal 23, @game.score
  end

  def test_連続ストライクすなわちダブル
    @game.record_shot(10) #10 + 10 + 3 = 23
    @game.record_shot(10) #10 + 3 + 1 = 14
    @game.record_shot(3)
    @game.record_shot(1)
    record_mamy_shots(14, 0)
    assert_equal 41,@game.score
  end

  def test_3連続ストライクすなわちターキー
    @game.record_shot(10)  # 10 + 10 + 10 = 30
    @game.record_shot(10)  # 10 + 10 + 3 = 23
    @game.record_shot(10)  # 10 + 3 + 1 = 14
    @game.record_shot(3)
    @game.record_shot(1)
    record_mamy_shots(12, 0) #全投球分は17となる。　#
    assert_equal 71, @game.score
  end

  def test_ストライクの後のスペア
    @game.record_shot(10)
    @game.record_shot(5)
    @game.record_shot(5)
    @game.record_shot(3)
    record_mamy_shots(15, 0) #全体では、19発になる
    assert_equal 36, @game.score
  end

  def test_ダブルの後のスペア
    @game.record_shot(10)
    @game.record_shot(10)
    @game.record_shot(5)
    @game.record_shot(5)
    @game.record_shot(3)
    record_mamy_shots(13, 0)  #ダブルがある為、全体では18発になる
    assert_equal 61, @game.score
  end

  def test_全ての投球がガターの場合の第1フレームの得点
    @game.many_shots(20, 0)
    assert_equal 0, @game.frame_score(1)
  end

  private

  def record_mamy_shots(count, pins)
    count.times do
      @game.record_shot(pins)
    end
  end
end
