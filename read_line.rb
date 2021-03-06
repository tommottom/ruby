
=begin

read_text.rbは指定したファイルの内容をそのまま一気に表示します。
まとめて読み込んだテキストデータを表示するので
・まとめて読み込むと時間がかかる
・一時的に全てのデータをメモリにためることになるので、大きなファイルの場合困ることがある
100万行あるようなファイルでも、本当に必要なのは最初の一行だけなんでこともあります

なのでファイルからテキストデータを一行ずつ読み込んでから
表示するようにしましょう＾＾

=end


filename = ARGV[0]
file = File.open(filename)
file.each_line do |line|
  print line
end
file.close
