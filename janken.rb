class Janken
  attr_accessor :hand
  def initialize
    @hand = %w[グー チョキ パー]
  end

  def judge(human, computer)
    puts "あなたの手は#{@hand[human]}です。"
    puts "コンピュータの手は#{@hand[computer]}です。"
    var = (human - computer) % 3
    case var
    when 2
      puts "あなたの勝ちです"
    when 1
      puts "あなたの負けです"
    when 0
      puts "あいこです"
    end
  end
end

result = Janken.new
puts result.judge(ARGV[0].to_i, rand(3))
