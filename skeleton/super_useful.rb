# PHASE 2
def convert_to_int(str)
  
  begin 
    Integer(str) 
  rescue ArgumentError
    return "nil"
  end 
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]
class CoffeeRelatedError < StandardError; end
def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeRelatedError
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
    puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue
    retry if CoffeeRelatedError
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    begin 
      if name.empty? || fav_pastime.empty?
        raise "name or favorite past time is empty" 
      end   
      @name = name
      @fav_pastime = fav_pastime
    end 
    begin 
      if yrs_known < 5
        raise "You have to know this person for more than 5 years" 
      end
      @yrs_known = yrs_known      
    end
    
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end
