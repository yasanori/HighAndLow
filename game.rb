require './card.rb'
require './deck.rb'
require './maney.rb'


deck = Deck.new
maney = Maney.new

puts <<~text
  ~~  ~~  ~~  ~~
   HIGH
        and
            LOW
  ~~  ~~  ~~  ~~
text

puts "参加しますか？（参加費：100000＄）"
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

puts "相手のカード"
vscard = deck.open
vscard.show

puts <<~text
  -----------
  High or Low
  -----------
text
while true do
  puts <<~text
    high : 1
    low  : 2
  text

  decision = gets.to_i
  if decision == 1
    puts "あなたの選択：high"
    puts "カードオープン"
    yourcard = deck.open
    yourcard.show
  elsif decision == 2
    puts "あなたの選択：low"
    puts "カードオープン"
    yourcard = deck.open
    yourcard.show
  else
    puts "１か２で入力してください"
  end
end
