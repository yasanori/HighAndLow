
class Card

  def initialize(mark, num)
    @mark = mark
    @num = num
  end

  def show
    puts "#{@mark} #{@num}"
  end

  def put_num
    if @num == "A"
      return @num = 1
    elsif @num == "J"
      return @num = 11
    elsif @num == "Q"
      return @num = 12
    elsif @num == "K"
      return @num = 13
    else
      return @num = @num.to_i
    end
  end

  def judgment(vsnum, decision, maney)

    put_num

    if decision == 1
      if  vsnum < @num
        puts "win"
        maney.win
      elsif @num == vsnum
        puts "drow"
        maney.drow
      else
        puts "lose"
      end
    elsif decision == 2
      if  @num < vsnum
        puts "win"
        maney.win
      elsif @num == vsnum
        puts "drow"
        maney.drow
      else
        puts "lose"
      end
    end
  end

end
