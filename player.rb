class Player

  attr_reader :id, :lives

  def initialize(id)
    @id = id
    @lives = 3
  end

  def lose_life
    if alive?
      @lives -= 1
    else
      puts "#{@id} is d34d!"
    end
  end

  def right_answer
    puts "You got the right answer"
  end

  def alive?
    @lives > 0 
  end

  def to_s
    "#{@id}"
  end

end