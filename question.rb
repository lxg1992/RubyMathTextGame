

class Question



  def initialize
    @var1 = rand(20)
    @var2 = rand(20)
    @answer = @var1 + @var2
  end

  def query
    puts "What is #{@var1} + #{@var2} ?"
  end

  def right_answer?(ans)
    @answer == ans
  end

  def wrong_answer?(ans)
    @answer != ans
  end




end
