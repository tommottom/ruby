=begin
別のファイルを取り込む

require 使いたいライブラリのファイル名
=end

def simple_grep(pattern, filename)
  file = File.open(filename)
  file.each_line do |line|
    if pattern =~ line
      print line
    end
    file.close
end
