card = (0..52).to_a

def mark_num(i)
  return nil if i > 52
  return ["", "Joker"] if i == 52
  mark, num = i.divmod(13)
  mark_ary = %w[♠ ♡ ♢ ♣]
  num_ary = ["A"] + [*("2".."10")] + %w[J Q K]
  # ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  [mark_ary[mark], num_ary[num]]
end

p card.sample(5).map { |i| mark_num(i) }

#[["♠", "4"], ["♡", "K"], ["♣", "5"], ["♢", "K"], ["♢", "5"]]
