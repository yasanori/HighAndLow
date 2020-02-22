class Deck

  def initialize
    @deck = []
    marks = ["♠️", "♣️", "❤️", "♦️"]
    nums = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    marks.each do |mark|
      nums.each do |num|
        card = Card.new(mark, num)
        @deck << card
      end
    end
    @deck.shuffle!
  end

  def open
    @deck.shift
  end



end
