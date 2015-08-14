=begin
if文に対してunlsee文があるように、while文にuntil文があります。
until文は構文の見た目はwhile文と同じですが、条件の判断が反対になります

つまり条件が「偽」の時に繰り返しを行います。
=end

until 条件 do
  繰り返したい処理
end

sum = 0
i = 1
until sum >= 50
  sum += i
  i += 1
end
puts sum



sum = 0
i = 1
while !(sum >= 50)
  sum += i
  i += 1
end
puts sum

#のようにwhile文の条件に否定の演算子「!」を使えば、until文と
#同じことができます。
