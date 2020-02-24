class Maney

  def initialize
    @cash = 1000000
    @bet_maney = 0
  end

  def cash
    @cash
  end

  def bet
    @bet_maney
  end

  def betting
    while true do
      puts <<~text
        [掛け金を入力してください ( 100000$単位 )]
        100000 ~ #{@cash}
      text
      @bet_maney = gets.to_i
      break if @cash >= @bet_maney && @bet_maney >= 100000 && @bet_maney % 100000 == 0
    end
    @cash -= @bet_maney
  end

  def win
    prize = (@bet_maney + @bet_maney)
    puts "賞金#{prize}"
    @cash += prize
  end

  def drow
    puts "#{@bet_maney}$キャッシュバック"
    @cash += @bet_maney
  end

end
