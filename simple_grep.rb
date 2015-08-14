
=begin
ファイルの中から特定のパターンの行のみ選んで出力する
例　ファイルChangeLog.txtから「matz」という文字列が含まれている行を出力
した場合
ruby simple_grep.rb パターン ファイル名で表示する。

=end

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)
file.each_line do |line|
  if pattern =~ line
    print line
  end
end
file.close


=begin
 ruby simple_grep.rb matz ChangeLog.txt
	  Accepted by matz at RubyKaigi 2014.
Thu Dec 26 10:49:14 2013  Yukihiro Matsumoto  <matz@ruby-lang.org>
=end
