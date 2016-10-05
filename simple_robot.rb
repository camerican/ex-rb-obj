# Robot class
# instance method of compute
# class method of destroy_humanity
class Robot
  @@num_of_robots = 0
  def initialize
    @sum = 0
    @@num_of_robots += 1
  end
  def compute n
    @sum += n.to_i
  end
  def self.destroy_humanity
    if @@num_of_robots > 2
      puts "We never liked you humans, prepare to pay the ultimate price!! Mwuhahahahaah"
    else
      puts "We would never harm you, we love you.  Please don't unplug us."
    end
  end
end