#クラスにクラス定数、クラス変数を定義

=begin
# クラス定数

class クラス名
  定数名(先頭文字は大文字) = 値
end

=end

#クラス作成
class Japan
  #クラス定数の定義
  PrimeMinister = "Shinzo Abe"
end

#クラス定数の参照
puts Japan::PrimeMinister

=begin
Rubyでは、スコープ演算子::が、自然言語の「の」の役割を担います。
putsメソッドに定義されているクラス定数の参照は、日本の首相と書き換える事ができます。
=end

=begin
クラス変数の使い方

class クラス名
  @@変数名(先頭は大文字) = 値

  def クラス名(またはself).クラス名
    @@クラス変数名
  end
end

=end

#クラス作成
class UK

  #クラス変数の定義
  @@PrimeMinister = 'David Camelon'

　#クラス変数を参照するメソッド定義
  def UK.PrimeMinister
    @@PrimeMinister
  end

  #クラス変数を参照するメソッド定義 by self
  def self.PrimeMinister
    @@PrimeMinister
  end
end

#クラス定数の参照
puts UK.PrimeMinister
