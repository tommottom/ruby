

ad = ARGV[0].to_i
heisei = ad -1989

while ad >= 1989
  puts heisei
end

この場合条件文が真のため、無限ループとなります。


ad = ARGV[0].to_i
heisei = ad -1989

while ad >= 1989
  puts heisei
end
