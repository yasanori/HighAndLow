class Maney
  def initialize
    @maney = 1000000
    @bet_maney = 0
  end

  def put_cash
    puts @maney
  end

  def put_bet
    puts @bet_maney
  end

  def bet
    while true do
    puts <<~text
      100000$ ~ #{@maney}$
      [掛け金を入力してください]
    text
    bet_maney = gets.to_i
    break unless @maney < bet_maney || bet_maney < 100000
  end
    @maney -= bet_maney
  end
end
