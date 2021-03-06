require './card.rb'
require './deck.rb'
require './maney.rb'

class HighAndLow
  def start
    deck = Deck.new
    maney = Maney.new
    yourmaney = 1000000

    puts <<~text
      ~~  ~~  ~~  ~~
      HIGH
            and
                LOW
      ~~  ~~  ~~  ~~
    text
    while maney.cash > 0 do
      puts "財布の中身：#{maney.cash}$"
      puts "[参加しますか？]"
      while true do
        puts <<~text
          参加　：１
          やめる：２
        text
        join_num = gets.to_i
        if join_num == 1
          break
        elsif join_num == 2
          exit!
        else
          puts "１か２で入力してください"
        end
      end

      maney.betting

      puts <<~text
        -----------
        High or Low
        -----------
        財布の中身: [ #{maney.cash}$ ]
        掛け金　　: [ #{maney.bet}$ ]
      text
      puts "[相手のカード]"
      vscard = deck.open
      vscard.show
      vsnum = vscard.put_num
      while true do
        puts <<~text
          high : 1
          low  : 2
        text
        decision = gets.to_i
        if decision ==1 or decision == 2
          break
        else
          puts "[１か２で入力してください]"
        end
      end

      if decision == 1
        puts "[あなたの選択：high]"
        puts "[カードオープン]"
        yourcard = deck.open
        yourcard.show
        yourcard.judgment(vsnum, decision, maney)

      elsif decision == 2
        puts "[あなたの選択：low]"
        puts "[カードオープン]"
        yourcard = deck.open
        yourcard.show
        yourcard.judgment(vsnum, decision, maney)
      end

    end
  end
end
