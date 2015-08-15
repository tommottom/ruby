

ad = ARGV[0].to_i
heisei = ad -1989

while ad >= 1989
  puts heisei
end

この場合条件文が真のため、無限ループとなります。
ではどうすれば。。。楽しいるrubyにあとで書いてるかな

suuzi=1
while true
puts(suuzi)
break if suuzi==100
suuzi+=1
end


ad = ARGV[0].to_i
heisei = ad -1989

while ad >= 1989
  puts heisei
break if ad = "stop"
end
