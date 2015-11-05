#耳の遠いおばあちゃんのプログラム
tweet = gets.chomp
while tweet != 'BYE'
    if tweet != tweet.upcase
        puts 'もっと大きな声で話しておくれよ、坊や!'
        tweet = gets.chomp
    else
        year = 1930 + (rand(21))
        puts 'いやー ' + year.to_s + ' 年以来ないねー'
        tweet = gets.chomp
    end
end
puts 'あんだって？？'

tweet2 = gets.chomp
while tweet2 != 'BYE'

    if tweet2 != tweet2.upcase
        puts 'もっと大きな声で話しておくれよ、坊や!'
        tweet2 = gets.chomp
    else
        year = 1930 + (rand(21))
        puts 'いやー ' + year.to_s + ' 年以来ないねー'
        tweet2 = gets.chomp
    end
end
puts 'えぇ？？'

tweet3 = gets.chomp
while tweet3 != 'BYE'
    if tweet3 != tweet3.upcase
        puts 'もっと大きな声で話しておくれよ、坊や!'
        tweet3 = gets.chomp
    else
        year = 1930 + (rand(21))
        puts 'いやー ' + year.to_s + ' 年以来ないねー'
        tweet3 = gets.chomp
    end
end
puts 'はい、バイバイ'
