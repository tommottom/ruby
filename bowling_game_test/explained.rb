
#リファクタリング前
=begin
require 'minitest/autorun'
require_relative 'bowling_game'

class BowlingGametest < Minitest::Unit::TestCase

  def test_全ての投球がガター
    game = BowlingGame.new
    20.times do
      game.record_shot(0)
    end
    assert_equal 0, game.score, 'geme.scoreの値が「0」である事'
  end

  def test_全ての投球が1ピンだけ倒れた
    game = BowlingGame.new
    20.times do
      game.record_shot(1)
    end
    assert_equal 20, game.score
  end
end

=end

#リファクタリング後

require 'minitest/autorun'
require_relative 'bowling_game'

class BowlingGametest < Minitest::Unit::TestCase
  

  def test_全ての投球がガター
    20.times do
      @game.record_shot(0)
    end
    assert_equal 0, @game.score, 'geme.scoreの値が「0」である事'
  end

  def test_全ての投球が1ピンだけ倒れた
    20.times do
      @game.record_shot(1)
    end
    assert_equal 20, @game.score
  end
end





# 演習1 #
=begin

コードの説明

def test_all_gutter_game

全ての投球ガターになるテスト

game = BowlingGame.new

ローカル変数gameにBowlingGameクラスのインスタンス(実体)を代入

def test_all_gutter_game
  20.times do
    game.record_shot(0)
  end
end

20回投球し、全てがガターになる結果を示すメソッド
20回投球する行為 => timesメソッドで明示
投球の結果、得点が0点である事 => インスタンス変数gameにrecord_shotメソッド
を追加し、引数に(0)を指定する事で明示

assert_equal 0, game.score

基本形 例文
assert_equal(expected, actual, message=nil)

expectedとactualが等しい時に成功する(否定形 => 等しくない時に成功する)
expected => 期待する値
actual => テスト対象の値

期待する値(expected) = 0
actual geme.scoreの値が「0」である事

参考サイト http://d.hatena.ne.jp/zariganitosh/20080407/1207532468

=end



=begin

・最初の設計
BowlingGameというクラスに点数計算をさせる　=> そもそもそんなクラスがないので
エラーが発生する。
・次の設計
20回の投球が全てガター(倒れたピンが0本)の場合、
スコアが0となることを確認できるテストに進化
・次の設計
record_shot(pins) => 倒したピンの本数を記録する
socre() => スコア計算する
という二つのメソッドをBowlingGameクラスに追加することで最低限の仕様を満たすことができる。
・次の設計
最小のメソッドを考え、BowlingGameクラスに追加する
・次の設計
BowlingGameクラスのscoreメソッドが「0点」をかえすように修正する
そうすることで、テストに成功する。
=end

=begin
「ボウリングの点数計算プログラム」を作る
制約
TDDに則ってまず失敗するテストを書く
=end

=begin
インクリメンタルな設計 => インクリメンタル =  一定の値、単位や数値を「一ずつ増やしていく」ことの形容


インクリメンタルな設計の場合
最低限必要な機能から「すこしずつ」開発を進め、その過程で設計自体も「すこしずつ」進化させていく

適合するケース => アジャイルな開発
・つくりたいものが決まっていない、わからない
・開発チームが開発対象を十分理解していない
・開発対象が複雑で正しい設計を誰もしらない

=end

=begin
#TDDの設計思想/流れ

設計思想

テスト駆動開発 Test Driven Development/TDD
価値
・インクリメンタルな設計を促す
・チームに良いリズムを生む
・開発に自信と信頼をもたらす
原則
・実装する前にテストを書く
・問題を放置せずに少しずつ前進する
・大事なのは完璧さよりも自信を持てること

開発の流れ

TDDの場合、RED(失敗)とGREEN(成功)を繰り返し、Refactor(改造)の工程をへて、再度RED(失敗)に移ります。

1 失敗するテストを書く　"CASE Red"
・機能の追加
・条件の追加
・バグの再現

2 テストが成功する最小限のコードを書く "CASE Green"

3 動作を保ったまま設計を洗練させる　"CASE Refactor"
=end


=begin

プログラミング設計の二つの設計要素

・責任の設計 => 静的な設計
インターフェース
問題を最も単純化できるクラスやメソッドの構成は？

名前
責任の内容を端的に表現するには？

・仕事の正しさの設計 => 動的な設計
振舞い
どんな手順でクラスやメソッドを使って処理をしていくか
事前条件と事後条件
ある事前条件で求められる結果 => 事後条件は何か？？

=end

# 演習2 #

=begin

TDDは初学者こそ学ぶべき/ TDD is Dead??

David Heinemeier Hansson　said

The test-first part was a wondeful set of training wheels that taught
me how to think about testing at a deeper lebel, but also some I quickly left behind.

テストファーストは自動車の補助輪のようなもので、テスティングをより深いレベルで考えるやり方を教わる
役にはたったが、私はすぐに補助輪を外してしまった。

=end

=begin

YAGNI => You ain't gonna need it => 機能は実際に必要になるまでは追加しない方が良い

・きっと後に必要になるだろう => 90%無駄になる
・予測できない事態に伴う変更に対しては、設計を単純にする事で対処できる
・コードを素早く実装するため、バグを減らすための最適な方法 => あまりコードを書かない事である。
・YAGNIとインクリメンタル設計は親和性が高い

=end

=begin

静的設計
BowlingGameクラスの責務の決定
・投球ごとの倒したピンの数を記録する
・スコアを計算する
責務を表現するメソッドの命名
・record_shot(pins)とsocre

動的設計
最も簡単なシナリオを考える
・全投球がガターの時にはスコアが0点になる
実際の手順を考える
・全投球がガター: 20回のrecord_shot(0)
・スコアが0点: socreの戻り値をassert_equalで確認
=end

=begin

最初の設計
全ての投球で1本ずつ倒した場合のテストを書く => errors

scoreメソッドには「0」を定義しているため、期待値20に対して実際の値は0となる。
そのためREDとなる。

# Running tests:

F

Finished tests in 0.093297s, 10.7185 tests/s, 10.7185 assertions/s.

  1) Failure:
BowlingGametest#test_all_gutter_game [bowling_game_test2.rb:11]:
全ての投球で一本ずつ倒した場合 => 20点獲得した時.
Expected: 20
  Actual: 0

1 tests, 1 assertions, 1 failures, 0 errors, 0 skips

次の設計
スコアの計算に関するロジックを記述していく

インスタンス変数「@socre」を定義して引数で渡された点数をそこで集計するように設計を進化させる
結果二つのテストをパスする
・ガターの時のテスト
・1ピンだけ倒れたテストのどちらのケースでもテストが成功


# Running tests:

..

Finished tests in 0.001044s, 1915.7088 tests/s, 1915.7088 assertions/s.

2 tests, 2 assertions, 0 failures, 0 errors, 0 skips


次の設計
重複したコードの部分をリファクタリングしていく。
setupメソッド 各テストメソッドを実行するまえに呼び出される
テスト対象のインスタンスを生成するなど毎回必要な処理を書く場所

=end

=begin

リファクタリング => 機能 = 振る舞いを変えずに設計を改善する事

How to do?? => ExtractMethod = メソッドの抽出/基本のリファクタ手法

リファクタリング/TDD

コードの「不吉な匂い」をきっかけにおこなう
重複したコード
長すぎるメソッド
多すぎる引数

振る舞いを変えずにコードを修正する
設計の向上、劣化の防止
理解しやすくなる
テストコードも対象となる

=end
