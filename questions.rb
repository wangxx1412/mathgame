class Question
  attr_accessor :num1, :num2, :ans, :correct_ans, :player, :score

  def initialize(player)
    @player = player
    @num1 = 0
    @num2 = 0
    @ans  = 0
    @correct_ans = 0
    @score = false
  end
  
  def ask
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    question = "Player #{@player}: What does #{@num1} plus #{@num2} equal?"
    puts question
  end

  def ans
    @correct_ans =  @num1 + @num2
    @ans = gets.chomp
    if (@correct_ans == @ans.to_i)
      puts "Player #{@player}: YES! You are correct."
      @score = true
    else
      puts "Player #{@player}: Seriously? No!"
    end
  end
end


