require './card.rb'
require './deck.rb'
require './maney.rb'


deck = Deck.new
maney = Maney.new

puts "参加しますか？（参加費：100000＄）"
while true do
  puts <<~text
  参加  ：１を入力
  やめる：２を入力
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
