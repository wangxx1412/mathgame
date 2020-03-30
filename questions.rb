class Question
  attr_accessor :num1, :num2, :ans, :correct_ans
  def initialize()
    @num1 = 0
    @num2 = 0
    @ans  = 0
    @correct_ans = 0
  end
  
  def ask
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    question = "What does #{num1} plus #{num2} equal?"
    puts question
  end

  def ans
    @correct_ans =  @num1 + @num2
    @ans = gets.chomp
    if (@correct_ans == @ans.to_i)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
    end
  end
end

sparky = Question.new
sparky.ask
sparky.ans
