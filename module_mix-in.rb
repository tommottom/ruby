module M
  def meth
    "meth"
  end
end

class C
  include M #モジュールMをインクルードする
end

c = C.new
p c.meth  #=> meth

pp
=begin
モジュール
インスタンスを持てない
モジュールは継承できない

Mix-in

クラス定義の中で、モジュールにクラスを混ぜ合わせること

includeメソッド
モジュールに含まれているメソッドや
定数をクラスの中に取り込むことができます。

メソッド検索のルール

クラスCのインスタンスに対してメソッド呼び出しを行うと、
"クラスC","モジュールM","クラスCのスーパクラスであるObject"の順に
メソッドを検索し、最初に見つかったものを実行します。
includeされたモジュールは、仮想的なスーパークラスとして機能します。




継承
既存のクラスには変更を加えずに新しい機能を追加したり、
部分的にカスタマイズして新しいクラスを作ることができます。

複数のクラスの共通部分をスーパークラスで実装し、差分はサブクラスで実装できます。

class クラス名　< スーパークラス名
　クラスの定義
end


単純継承
複数のスーパクラス(継承先のクラス)を持てないモデル.


Mix-inを使うことによって単純継承の関係を保ったまま複数のクラスで
機能の共有ができます。


Enumerable(Mix-inにより機能を提供するためのモジュール)

Enumerableを"eachメソッド"をもつクラスにincludeすると
"each_with_indexメソッド"や"collectメソッド"などの要素を
順に処理するためのメソッドを利用できます


=end
