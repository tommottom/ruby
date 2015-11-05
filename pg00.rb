
class Cards
  def trump
    card = []
    (0..52).each do |i|
      @card = card.sample
    end
  end
end

card = Cards.new
puts card.trump
