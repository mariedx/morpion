class Board
  attr_accessor :A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3

  def initialize
    # Initialize all 9 BoardCase
    @A1 = BoardCase.new("a1", " ")
    @A2 = BoardCase.new("a2", " ")
    @A3 = BoardCase.new("a3", " ")
    @B1 = BoardCase.new("b1", " ")
    @B2 = BoardCase.new("b2", " ")
    @B3 = BoardCase.new("b3", " ")
    @C1 = BoardCase.new("c1", " ")
    @C2 = BoardCase.new("c2", " ")
    @C3 = BoardCase.new("c3", " ")

    @array_cases = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]
  end

  def show_board
  puts " "
  puts " "
   puts "      1      2     3   "
   puts "         |      |      "
   puts " A   #{@A1.state}   |   #{@A2.state}  |   #{@A3.state}  "
   puts "   ______|______|______"
   puts "         |      |      "
   puts " B   #{@B1.state}   |   #{@B2.state}  |   #{@B3.state}  "
   puts "   ______|______|______"
   puts "         |      |      "
   puts " C   #{@C1.state}   |   #{@C2.state}  |   #{@C3.state}  "
   puts "         |      |      "
   puts " "
   puts " "
  end

  def plays(player)
    puts "#{player.name}, c'est ton tour! Où veux tu placer ton symbole?"
    print ">"
    choice = gets.chomp

    case choice
    when "a1"
      @A1.state = player.symbol if @A1.state == " "
    when "a2"
      @A2.state = player.symbol if @A2.state == " "
    when "a3"
      @A3.state = player.symbol if @A3.state == " "
    when "b1"
      @B1.state = player.symbol if @B1.state == " "
    when "b2"
      @B2.state = player.symbol if @B2.state == " "
    when "b3"
      @B3.state = player.symbol if @B3.state == " "
    when "c1"
      @C1.state = player.symbol if @C1.state == " "
    when "c2"
      @C2.state = player.symbol if @C2.state == " "
    when "c3"
      @C3.state = player.symbol if @C3.state == " "
    else 
      puts "Ecris ta reponse sous la forme a1 stp'"
      print ">"
      choice = gets.chomp
    end
  end

  def player_win(player_symbol)
    if (@A1.state == player_symbol && @A2.state == player_symbol && @A3.state == player_symbol) || (@B1.state == player_symbol && @B2.state == player_symbol && @B3.state == player_symbol) || (@C1.state == player_symbol && @C2.state == player_symbol && @C3.state == player_symbol) || (@A1.state == player_symbol && @B1.state == player_symbol && @C1.state == player_symbol) || (@A2.state == player_symbol && @B2.state == player_symbol && @C2.state == player_symbol) || (@A3.state == player_symbol && @B3.state == player_symbol && @C3.state == player_symbol) || (@A1.state == player_symbol && @B2.state == player_symbol && @C3.state == player_symbol) || (@A3.state == player_symbol && @B2.state == player_symbol && @C1.state == player_symbol)
      return true
    else
      return false
    end
  end
end

