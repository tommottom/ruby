
class Kaibun
  def checkPalindrome(word)
    word = word.to_s
    size = word.length / 2
    return ( word[0..size] == word.reverse[0..size] )
  end
end


kaibun = Kaibun.new

p kaibun
