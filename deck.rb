class Deck

  def initialize
    @deck = []
    marks = ["♠️", "♣️", "❤️", "♦️"]
    nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]

    marks.each do |mark|
      nums.each do |num|
        card = Card.new(mark, num)
        @deck << card
      end
    end
    @deck.shuffle!
  end

end
